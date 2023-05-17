select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ID
from vk_project.DBT_TRANSFORM.SHOW_DETAILS_DIM
where ID is null



      
    ) dbt_internal_test