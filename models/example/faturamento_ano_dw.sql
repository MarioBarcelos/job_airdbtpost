with faturamento_ano_dw as (

    SELECT extract ("year" from purchased_at ) AS "Ano",
            sum(ap.price) AS "Faturamento"
    FROM public.airbyte_purchases pur INNER JOIN airbyte_products ap
    ON pur.product_id = ap.id
    GROUP BY 1 
    ORDER BY 1 desc

)

SELECT * FROM faturamento_ano_dw