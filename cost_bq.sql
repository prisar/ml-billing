SELECT
DISTINCT labels
  -- (SELECT value FROM UNNEST(labels) WHERE key = "team") AS team,
  -- SUM(cost) AS total_cost
FROM
  `mrc-quant-ml.all_billing_data.gcp_billing_export_resource_v1_*`
WHERE
  service.description = "Vertex AI"
  -- AND resource.name LIKE "%gemini%"
GROUP BY team
ORDER BY total_cost DESC



-- cost 

SELECT
-- DISTINCT labels
  (SELECT value FROM UNNEST(labels) WHERE key = "team") AS team,
  SUM(cost) AS total_cost
FROM
  `mrc-quant-ml.all_billing_data.gcp_billing_export_resource_v1_*`
WHERE
  service.description = "Vertex AI"
  -- AND resource.name LIKE "%gemini%"
GROUP BY team
ORDER BY total_cost DESC


-- cost of gemini sku

SELECT
*
FROM
  `mrc-quant-ml.all_billing_data.gcp_billing_*`
WHERE
  service.description = "Vertex AI"
  and project.name = 'mrc-quant-ml'
  AND sku.description LIKE "Gemini%"


-- group by team cost - gemini

SELECT
(SELECT value FROM UNNEST(labels) WHERE key = "team") AS team,
  SUM(cost) AS total_cost
FROM
  `mrc-quant-ml.all_billing_data.gcp_billing_*`
WHERE
  service.description = "Vertex AI"
  and project.name = 'mrc-quant-ml'
  AND sku.description LIKE "Gemini%"
GROUP BY team
ORDER BY total_cost DESC

