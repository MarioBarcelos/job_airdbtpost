with faturamento_model_dw as (

    SELECT pro.model as "Model",
    sum(pro.price) AS "Faturamento"
    FROM public.airbyte_purchases pur INNER JOIN airbyte_products pro 
    ON pur.product_id = pro.id
    GROUP BY pro.model
    ORDER BY 2 desc

)

SELECT * FROM faturamento_model_dw