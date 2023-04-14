-- 코드를 입력하세요
SELECT count(USER_ID) as users
FROM USER_INFO

WHERE YEAR(JOINED)='2021' and age>=20 and age<30
