select distinct
payment_method
from {{ ref('raw_payments') }}
order by 1