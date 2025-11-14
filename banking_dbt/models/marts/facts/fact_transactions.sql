{{ 
    config(
        materialized='incremental',
        unique_key='transaction_id',
        incremental_strategy='merge'
    ) 
}}

SELECT
    t.transaction_id,
    t.account_id,
    a.customer_id,
    t.amount,
    t.related_account_id,
    t.status,
    t.transaction_type,
    t.transaction_time,
    CURRENT_TIMESTAMP AS load_timestamp
FROM {{ ref('stg_transaction') }} t
LEFT JOIN {{ ref('stg_accounts') }} a
    ON t.account_id = a.account_id

{% if is_incremental() %}
-- Only process NEW rows
WHERE t.transaction_time > (SELECT MAX(transaction_time) FROM {{ this }})
{% endif %}
