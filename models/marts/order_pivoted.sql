with payments as 
{
    select * from {{ ref('stg_payments') }}
},

pivoted as 
{
    select 
    order_id,
    sum(case when payment_method= "bank_transfer" then amount else 0 end)
    from payments
}

select * from pivoted