SELECT
    u.USER_ID,
    u.NICKNAME,
    concat(u.city,' ',u.street_address1,' ', u.STREET_ADDRESS2) as '전체주소',
    concat(
        substring(u.TLNO,1,3),'-',
        substring(u.TLNO,4,4),'-',
        substring(u.TLNO,8,4)
    )
    as '전화번호'
from USED_GOODS_USER as u
#  조인
join used_goods_board b 
    on b.writer_id = u.user_id
group by b.writer_id
having count(*) >= 3
order by u.user_id desc;
