with bing as (
select 
ad_id,
null as add_to_cart,
adset_id,
campaign_id,
channel,
clicks,
null as comments,
null as creative_id,
date,
null as engagements,
null as impressions, --imps
null as installs,
null as likes,
null as link_clicks,
null as placement_id,
null as post_click_conversions,
null as post_view_conversions,
null as posts,
null as purchase,
null as registrations,
revenue,
null as shares,
spend,
conv as total_conversions,
null as video_views
 from {{ ref("src_ads_bing_all_data") }}
)

select * from bing