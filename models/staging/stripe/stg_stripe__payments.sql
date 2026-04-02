    select 
        id ,
        orderid as  order_id,
        paymentmethod ,
        status ,
        {{ Analytics.cents_to_dollars("amount", 4 ) }} as amount ,
        created ,
        _batched_at 
 
    from {{ source('stripe', 'payment') }}
