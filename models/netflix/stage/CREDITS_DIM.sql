{{ config(
    pre_hook="ALTER SESSION SET QUOTED_IDENTIFIERS_IGNORE_CASE = true"
) }}

SELECT 
* 
FROM {{ var('credits') }}
WHERE ROLE IN ('ACTOR','DIRECTOR')