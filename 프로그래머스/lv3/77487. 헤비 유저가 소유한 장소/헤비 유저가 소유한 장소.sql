-- 코드를 입력하세요
# 공간을 둘 이상 등록한 사람 = '헤비유저'
# 헤이버유저가 등록한 공간의 정보 아이디순으로 조회

SELECT *
FROM Places 
where host_id in (
select host_id 
from Places 
group by host_id 
having count(host_id) >= 2)
Order by ID