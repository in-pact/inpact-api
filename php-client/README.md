in/PACT API - PHP Sample
===========================

Configuration
-------------

```php
  Inpact\API::configure(array(
    "api_key" => "an-api-key",
    "hostname" => "https://inpact.care"
  ));
```

API methods
-----------

```PHP
  # Get your account info
  Inpact\Account::find()

  # Get a vReward info
  Inpact\Reward::find(array(
    "campaign_id" => $campaign_id,
    "id"          => $reward_id
  ));

  # Creates a vReward
  Inpact\Reward::create(array(
    "campaign_id" => $campaign_id,
    "amount" => $amount,
    "expiration_policy" => "autofullfill",
    "preferred_cause_id" => $cause_uid,
    "expires_at" => $expires_at,
    "identifier" => $identifier,
    "event" => $event,
    "event_description" => $event_description
  ));

  # Creates an Email vReward
  Inpact\EmailReward::create(array(
    "email"       => $email,
    "message"     => $email_message,
    "campaign_id" => $campaign_id,
    "amount" => $amount,
    "expiration_policy" => "autofullfill",
    "preferred_cause_id" => $cause_uid,
    "expires_at" => $expires_at,
    "identifier" => $identifier,
    "event" => $event,
    "event_description" => $event_description
  ));

  # Assigns a vReward to a supporter
  $reward = Inpact\Reward::find(array(
    "campaign_id" => $campaign_id,
    "id"          => $reward_id
  ));
  $reward->accept($supporter_uid);

  # Get a Giving Link info
  Inpact\GivingLink::find(array(
    "campaign_id" => $campaign_id,
    "id"          => $identifier
  ));

  # Creates a Giving Link
  Inpact\GivingLink::create(array(
    "campaign_id" => $campaign_id,
    "name" => $name,
    "amount" => $amount,
    "currency" => $currency,
    "region" => $region,
    "starting_at" => $starting_at,
    "expires_at" => $expires_at,
    "frequency" => $frequency
  ));

```

### Notes

- To use this sample code you need PHP >= 5.3.0.
- To quickly test the samples open the PHP console  with `php -a` and run `require("inpact.php");` from the `php-client` folder
