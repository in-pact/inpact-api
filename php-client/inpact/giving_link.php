<?php

namespace Inpact;

/**
* Reward
*/
class GivingLink extends Resource
{
    public static $url = "api/v2/campaigns/{campaign_id}/giving-links";
    public static $resource_name = "link";
    public static $collection_name = "links";
    public static $remote_forbidden_attributes = array("id", "campaign_id");
}

?>
