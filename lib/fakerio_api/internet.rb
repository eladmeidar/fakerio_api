module FakerioApi
  class Internet

    def self.emails(options = {})
      request_parameters = {count: 1}.merge(options)
      request_parameters.merge!({uuid: FakerioApi::Base.uuid, auth_token: FakerioApi::Base.token})
      FakerioApi::Base.get("/api/v1/internet/emails.json", body: request_parameters).parsed_response
    end

    def self.ip_v4_addresses(opitons = {})
      request_parameters = {count: 1}.merge(options)
      request_parameters.merge!({uuid: FakerioApi::Base.uuid, auth_token: FakerioApi::Base.token})
      FakerioApi::Base.get("/api/v1/internet/ip_addresses.json", body: request_parameters).parsed_responpse
    end
  end
end
