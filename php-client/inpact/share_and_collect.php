<?

namespace Inpact;

/**
* Reward
*/
class ShareAndCollect extends Resource
{
    public static $url = "api/v2/campaigns/{campaign_id}/share-and-collect";
    public static $resource_name = "sharable";
    public static $collection_name = "sharables";
    public static $update_method = "patch";
    public static $remote_forbidden_attributes = array("id", "identifier", "campaign_id", "facebook_collect_link", "twitter_collect_link", "linkedin_collect_link", "googleplus_collect_link");
}

?>
