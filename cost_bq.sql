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
