module Inpact

  class Configuration

    attr_accessor :api_key,
                  :hostname,
                  :verify_ssl

    def verify_ssl
      hostname == "https://inpact.care"
    end

  end
end
