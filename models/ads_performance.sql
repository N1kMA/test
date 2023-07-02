
select channel, 
sum(spend)/sum(total_conversions) as Conversion_cost,
sum(spend)/sum(engagements) as Cost_per_engage,
sum(impressions) as Impressions_by_channel,
sum(spend)/sum(clicks) as CPC
from {{ ref('paid_ads__basic_performance') }}
group by channel






