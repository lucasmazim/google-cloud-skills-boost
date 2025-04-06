
# Create a dataset
bq mk -d qwiklabs-gcp-00-4c673c6646f6:bqml_lab

# Save view
bq mk --use_legacy_sql=false --view "
SELECT
  IF(totals.transactions IS NULL, 0, 1) AS label,
  IFNULL(device.operatingSystem, '') AS os,
  device.isMobile AS is_mobile,
  IFNULL(geoNetwork.country, '') AS country,
  IFNULL(totals.pageviews, 0) AS pageviews
FROM
  \`bigquery-public-data.google_analytics_sample.ga_sessions_*\`
WHERE
  _TABLE_SUFFIX BETWEEN '20160801' AND '20170631'
LIMIT 10000;" \
bqml_lab.training_data

# Create model
bq query --use_legacy_sql=false "
CREATE OR REPLACE MODEL \`bqml_lab.sample_model\`
OPTIONS(model_type='logistic_reg') AS
SELECT * FROM \`bqml_lab.training_data\`;"

# Evaluate model
SELECT
  *
FROM
  ml.EVALUATE(MODEL \`bqml_lab.sample_model\`);


#  Use the model
bq mk --use_legacy_sql=false --view "
SELECT
  IF(totals.transactions IS NULL, 0, 1) AS label,
  IFNULL(device.operatingSystem, '') AS os,
  device.isMobile AS is_mobile,
  IFNULL(geoNetwork.country, '') AS country,
  IFNULL(totals.pageviews, 0) AS pageviews
FROM
  \`bigquery-public-data.google_analytics_sample.ga_sessions_*\`
WHERE
  _TABLE_SUFFIX BETWEEN '20160801' AND '20170631'
LIMIT 10000;" \
bqml_lab.training_data