
  
    

        create or replace transient table vk_project.DBT_TRANSFORM.SCORES_VOTES_DIM
         as
        (

SELECT
ID
,IMDB_ID
,IMDB_SCORE
,IMDB_VOTES
,TMDB_POPULARITY
,TMDB_SCORE
FROM
VK_PROJECT.DBT_RAW.TITLES
        );
      
  