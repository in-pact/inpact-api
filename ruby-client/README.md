Inpact API - Ruby Sample
===========================



Configuration
-------------


```ruby
  Inpact::API.configure do |config|
    config.api_key = "an-api-key"
  end
```

API methods
-----------

```ruby
  # Get your account info
  Inpact::Account.find()

  # Get a reward info
  Inpact::Reward.find(campaign_id: campaign_id, id: reward_id)

  # Creates a reward
  Inpact::Reward.create({
    campaign_id: campaign_id,
    amount: amount,
    expiration_policy: "autofullfill",
    preferred_cause_id: "1",
    expires_at: expires_at,
    identifier: identifier,
    event: event,
    event_description: event_description
  })

  # Creates an email reward
  Inpact::EmailReward.create({
    campaign_id: campaign_id,
    email: email,
    message: email_message,
    amount: amount,
    expiration_policy: "autofullfill",
    preferred_cause_id: "1",
    expires_at: expires_at,
    identifier: identifier,
    event: event,
    event_description: event_description
  })

  # Assigns a reward to a supporter
  reward = Inpact::Reward.new(campaign_id: campaign_id, id: reward_id)
  reward.accept(uid)

  # Creates a Giving Link
  Inpact::GivingLink.create({
    campaign_id: campaign_id,
    name: name,
    amount: amount,
    currency: currency,
    region: region,
    starting_at: starting_at,
    expires_at: expires_at,
    frequency: frequency
  })

  # Get a giving link info
  Inpact::GivingLink.find(campaign_id: campaign_id, id: identifier)

  # Creates a Share and Collect resource
  Inpact::ShareAndCollect.create({
    campaign_id: campaign_id,
    name: name,
    amount: amount,
    currency: currency,
    domains: domains
  ));

  # Get a Share and Collect info
  Inpact::ShareAndCollect.find(campaign_id: campaign_id, id: identifier)

  # Update a Share and Collect resource
  sharable = Inpact::ShareAndCollect.find(campaign_id: campaign_id, id: identifier)
  sharable.amount = 10
  sharable.save


```


### Notes

- To use this sample code you need to install the [Rest Client](https://github.com/rest-client/rest-client) and [JSON](http://rubygems.org/gems/json) gems
- To quickly test the samples in console fire `pry -r ./lib/inpact.rb` from the `ruby-client` folder
