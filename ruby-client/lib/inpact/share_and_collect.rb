module Inpact
  class ShareAndCollect < Resource
    @url = "/api/v2/campaigns/%{campaign_id}/share-and-collect"
    @resource_name   = "sharable"
    @collection_name = "sharables"
    @update_method = "patch"
    @remote_forbidden_attributes = [:id, :identifier, :campaign_id, :facebook_collect_link, :twitter_collect_link, :linkedin_collect_link, :googleplus_collect_link]
  end
end
