with

payments as (
    select * from {{ ref('stg_payments') }}
)

select  
    order_id,
    sum(amount) as total_amount
from payments
group by order_by
having total_amount < 0