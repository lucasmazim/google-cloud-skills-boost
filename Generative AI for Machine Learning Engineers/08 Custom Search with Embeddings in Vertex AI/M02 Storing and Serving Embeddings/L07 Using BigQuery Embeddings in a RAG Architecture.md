# Using BigQuery Embeddings in a RAG Architecture

Primeira parte: BigQuery

Segunda parte: notebook colab enterprise

```sql
CREATE OR REPLACE MODEL `bbc_news.bq_embedding_model`
  REMOTE WITH CONNECTION `us.vertex-ai-connection-id`
  OPTIONS (ENDPOINT = 'text-embedding-004');

SELECT * FROM `bigquery-public-data.bbc_news.fulltext` LIMIT 5;

CREATE OR REPLACE TABLE
  `bbc_news.bbc_news_with_embeddings` AS (
  SELECT
    *
  FROM
    ML.GENERATE_TEXT_EMBEDDING( MODEL `bbc_news.bq_embedding_model`,
      (
      SELECT
        title,
        body,
        CONCAT(title, ": ", body) AS content
      FROM
        `bigquery-public-data.bbc_news.fulltext`
      WHERE
        LENGTH(body) > 0 AND LENGTH(title) > 0
     )
    ) WHERE ARRAY_LENGTH(text_embedding) > 0
    LIMIT 500
  );


  CREATE OR REPLACE VECTOR INDEX bbc_news_index
ON `bbc_news.bbc_news_with_embeddings`(text_embedding)
OPTIONS(index_type = 'IVF',
  distance_type = 'COSINE',
  ivf_options = '{"num_lists":500}')


SELECT query.query, base.title, base.body
FROM VECTOR_SEARCH(
  TABLE `bbc_news.bbc_news_with_embeddings`, 'text_embedding',
  (
  SELECT text_embedding, content AS query
  FROM ML.GENERATE_TEXT_EMBEDDING(
  MODEL `bbc_news.bq_embedding_model`,
  (SELECT 'The US Economy' AS content))
  ),
  top_k => 5, options => '{"fraction_lists_to_search": 0.01}')
```