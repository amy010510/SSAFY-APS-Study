SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE') as TLNO
from patient
where gend_cd = 'W' and age <= 12
order by age desc, PT_NAME asc;