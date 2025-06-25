-- 코드를 입력하세요
SELECT ap.APNT_NO, p.PT_NAME, p.PT_NO, ap.MCDP_CD, d.DR_NAME, ap.APNT_YMD
from appointment ap
join patient p
    on p.pt_no = ap.pt_no
join doctor d
    on d.dr_id=ap.mddr_id
where 
    ap.MCDP_CD='CS' and 
    ap.apnt_cncl_yn='N' and 
    ap.apnt_ymd like '2022-04-13%'
order by ap.APNT_YMD

# MCDP_CD 진료과코드
# MDDR_ID 의사ID
# APNT_CNCL_YN  예약취소여부
# APNT_CNCL_YMD 예약취소날짜

