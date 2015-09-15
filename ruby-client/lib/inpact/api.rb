require 'restclient'
module Inpact

  class API
    class << self
      attr_accessor :default_client

      def configure
        yield(config)
        @default_client = self.new(config.api_key, config.hostname, {verify_ssl: config.verify_ssl})
      end

      def config
        @configuration ||= Configuration.new
      end

      def get_account
        Inpact::Account.find()
      end

      def get_reward(campaign_id, reward_id)
        Inpact::Reward.find(campaign_id: campaign_id, id: reward_id)
      end

      def create_reward(campaign_id, amount, expires_at, identifier=nil, event=nil, event_description=nil)
        Inpact::Reward.create({
          campaign_id: campaign_id,
          amount: amount,
          expires_at: expires_at,
          identifier: identifier,
          event: event,
          event_description: event_description
        })
      end

      def create_email_reward(campaign_id, email, amount, expires_at, identifier=nil, event=nil, event_description=nil)
        Inpact::EmailReward.create({
          campaign_id: campaign_id,
          email: email,
          amount: amount,
          expires_at: expires_at,
          identifier: identifier,
          event: event,
          event_description: event_description
        })
      end

      def assign_reward(campaign_id, reward_id, uid)
        reward = Reward.new(campaign_id: campaign_id, id: reward_id)
        reward.accept(uid)
      end

    end

    def initialize(api_key, hostname, options = {})
      @connection = RestClient::Resource.new(hostname, {user: api_key, password: 'inpact'}.merge(options))
    end

    def connection
      @connection
    end

    def get(url)
      @connection[url].get accept: :json
    end

    def post(url, params = {})
      @connection[url].post params, {accept: :json}
    end

    def put(url, params = {})
      @connection[url].put params, {accept: :json}
    end

    def patch(url, params = {})
      @connection[url].patch params, {accept: :json}
    end

  end

end
