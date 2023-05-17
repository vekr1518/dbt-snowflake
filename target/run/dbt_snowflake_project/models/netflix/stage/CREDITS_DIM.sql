
  
    

        create or replace transient table vk_project.DBT_TRANSFORM.CREDITS_DIM
         as
        (

SELECT 
* 
FROM VK_PROJECT.DBT_RAW.CREDITS
WHERE ROLE IN ('ACTOR','DIRECTOR')
        );
      
  