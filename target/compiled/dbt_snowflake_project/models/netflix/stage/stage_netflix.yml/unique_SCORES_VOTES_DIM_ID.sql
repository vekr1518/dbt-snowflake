
    
    

select
    ID as unique_field,
    count(*) as n_records

from vk_project.DBT_TRANSFORM.SCORES_VOTES_DIM
where ID is not null
group by ID
having count(*) > 1


