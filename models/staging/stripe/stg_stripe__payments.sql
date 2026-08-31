--    select 
--        id ,
--        orderid as  order_id,
--        paymentmethod ,
--        status ,
--        {{ Analytics.cents_to_dollars("amount", 4 ) }} as amount ,
--        created ,
--        _batched_at 
 
--    from {{ source('stripe', 'payment') }}

with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

transformed as (

  select

    id as payment_id,
    orderid as order_id,
    created as payment_created,
    paymentmethod  as payment_method ,
    status as payment_status,
    round(amount / 100.0, 2) as payment_amount,
    _batched_at

  from source

)

select * from transformed
