
  
    

        create or replace transient table vk_project.DBT_TRANSFORM.SHOW_DETAILS_DIM
         as
        (

SELECT
ID
,TITLE
,TYPE
,DESCRIPTION
,RELEASE_YEAR
,AGE_CERTIFICATION
,RUNTIME
,GENRES
,PRODUCTION_COUNTRIES
,SEASONS
FROM
VK_PROJECT.DBT_RAW.TITLES
        );
      
  