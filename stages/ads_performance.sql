select
    channel,
    sum(spend) / sum(total_conversions) as conversion_cost,
    sum(spend) / sum(engagements) as cost_per_engage,
    sum(impressions) as impressions_by_channel,
    sum(spend) / sum(clicks) as cpc
from {{ ref("paid_ads__basic_performance") }}
group by channel
