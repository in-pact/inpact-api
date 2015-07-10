module Inpact
  class Reward < Resource
    @url = "/api/v2/campaigns/%{campaign_id}/giving-links"
    @resource_name   = "link"
    @collection_name = "links"
    @remote_forbidden_attributes = [:id, :campaign_id]
  end
end
