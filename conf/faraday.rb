require 'escher'
require 'escher-keypool'
require 'faraday_middleware/escher'

ENV['EXAMPLE_KEYID']="origin_destination"
ENV['KEY_POOL']='[{"keyId":"origin_destination_v1","secret":"developersecret","acceptOnly":0}]'


use FaradayMiddleware::Escher::RequestSigner,
    credential_scope: 'eu/destination/ems_request',
    options: {
        algo_prefix: 'EMS',
        vendor_key: 'EMS',
        hash_algo: 'SHA256',
        auth_header_name: 'X-Ems-Auth',
        date_header_name: 'X-Ems-Date',
    },

    active_key: -> { Escher::Keypool.new.get_active_key('example') }