-- 코드를 입력하세요
SELECT T2.INGREDIENT_TYPE, SUM(T1.TOTAL_ORDER)
FROM 
FIRST_HALF AS T1
LEFT JOIN ICECREAM_INFO AS T2
ON T1.FLAVOR = T2.FLAVOR
GROUP BY T2.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER ASC