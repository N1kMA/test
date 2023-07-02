with tiktok as (
 select 
ad_id,
add_to_cart,
adgroup_id as adset_id,
campaign_id,
channel,
clicks,
null as comments,
null as creative_id,
date,
null as engagements,
impressions,
rt_installs as installs, --or may be skan_app_install
null as likes,
null as link_clicks,
null as placement_id,
null as post_click_conversions,
null as post_view_conversions,
null as posts,
purchase,
registrations,
null as revenue,
null as shares,
spend,
(conversions) as total_conversions,
video_views
 from {{ ref("src_ads_tiktok_ads_all_data") }})

 select * from tiktok