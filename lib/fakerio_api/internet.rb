module FakerioApi
  class Internet

    def self.emails(options = {})
      request_parameteres = {count: 1}.merge(options)
      request_parameteres.merge!({uuid: FakerioApi::Base.uuid, auth_token: FakerioApi::Base.token})
      FakerioApi::Base.get("/api/v1/internet/emails.json", body: request_parameteres).parsed_response
    end
  end
end