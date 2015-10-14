#!/usr/bin/env ruby

require 'thor'
require 'escher'

class EscherCli < Thor
  desc "presign CREDENTIAL_SCOPE KEY SECRET URL", "Presign URL with given parameters"



  def presign(credential_scope, key = nil, secret = nil, url = nil)
    escher = Escher::Auth.new(credential_scope)
    puts escher.generate_signed_url(url, { api_key_id: key, api_secret: secret })
  end


end

EscherCli.start(ARGV)
