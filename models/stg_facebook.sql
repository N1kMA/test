with facebook as (
select 
ad_id,
add_to_cart,
null as adset_id,
campaign_id,
channel,
clicks,
comments,
creative_id,
date,
inline_link_clicks + views as engagements,
impressions,
mobile_app_install as installs,
likes,
clicks as link_clicks,
null  as placement_id,
inline_link_clicks as post_click_conversions,
views as  post_view_conversions,
null as posts,
purchase,
complete_registration as registrations,
null as revenue,
shares,
spend,
(purchase) as total_conversions,
null as video_views
 from {{ ref("src_ads_creative_facebook_all_data") }})

 select * from facebook