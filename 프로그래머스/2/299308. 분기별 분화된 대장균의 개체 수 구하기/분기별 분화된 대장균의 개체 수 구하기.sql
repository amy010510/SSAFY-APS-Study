select 
    concat(QUARTER(DIFFERENTIATION_DATE),'Q') as QUARTER,
    count(*) as ECOLI_COUNT
from ecoli_data
group by QUARTER