
    
    

select
    ID as unique_field,
    count(*) as n_records

from vk_project.DBT_TRANSFORM.SHOW_DETAILS_DIM
where ID is not null
group by ID
having count(*) > 1


