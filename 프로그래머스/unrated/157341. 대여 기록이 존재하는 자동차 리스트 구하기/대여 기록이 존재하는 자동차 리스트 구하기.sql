-- 코드를 입력하세요
# 자동차 정보 / 자동차 대여 기록 정보
# 세단인 자동차들 중 
# 10월 에 대여 시작한 기록이 있는
# 자동차 아이디 
#아이디 중복 없어야 함 

SELECT DISTINCT(T1.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR AS T1
LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS T2
ON T1.CAR_ID = T2.CAR_ID
WHERE DATE_FORMAT(T2.START_DATE, '%Y-%m') = '2022-10' and T1.CAR_TYPE = '세단'
ORDER BY CAR_ID DESC