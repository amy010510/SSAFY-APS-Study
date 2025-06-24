SELECT 
    HISTORY_ID,
    car_id,
    date_format(start_date, '%Y-%m-%d') as start_date,
    date_format(end_date, '%Y-%m-%d') as end_date,
    case
#     대여기간 조건
        when datediff(end_date, start_date)+1 >= 30 then '장기 대여'
        else '단기 대여' 
    end as rent_type
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
# 대여시작일 조건
WHERE start_date >= '2022-09-01' AND start_date < '2022-10-01'
order by history_id desc;