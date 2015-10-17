# escher-cli
CLI for EscherAuth in Ruby

## Features
 - presign url
 - [faraday-cli](https://github.com/adamluzsi/faraday-cli.rb) (Console line interface for faraday gem client so you can use your favorite middleware based ruby http client on the terminal!)

## Requirements
 - Ruby 2.2.3
 - Bundler gem

## Install
1. Check out into `~/.escher-cli`.
```
$ git clone https://github.com/emartech/escher-cli.git ~/.escher-cli
```
2. Install dependencies.
```
$ cd ~/.escher-cli
$ bundle install
```
3. Add ~/.escher-cli/bin to your $PATH for access to the EscherAuth command-line utility.
```
$ echo 'export PATH="$HOME/.escher-cli/bin:$PATH"' >> ~/.bash_profile
```
 - __Ubuntu Desktop__ note: Modify your ~/.bashrc instead of ~/.bash_profile.
 - __Zsh__ note: Modify your ~/.zshrc file instead of ~/.bash_profile.

## Configuration
 - Open `~/.escher-cli/conf/faraday.rb` in your favorite editor.
 - Setup your keypool. (see [escher-keypool-ruby](https://github.com/emartech/escher-keypool-ruby))

## Usage information
`$ escher-cli`

### TODO
 - escher-keypool management
 - ?authenticate?
