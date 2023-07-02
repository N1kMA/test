with final as (
select * from {{ ref('stg_bing') }}
union all
select * from {{ ref('stg_facebook') }}
union all
select * from {{ ref('stg_tiktok') }}
union all
select * from {{ ref('stg_twitter') }}
)
select * from final