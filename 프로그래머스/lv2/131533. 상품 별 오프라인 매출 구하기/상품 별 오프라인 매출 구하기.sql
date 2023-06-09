-- 코드를 입력하세요
SELECT T1.PRODUCT_CODE, SUM(T2.sales_amount * T1.price) AS SALES	
FROM PRODUCT AS T1
LEFT JOIN OFFLINE_SALE AS T2
ON T1.PRODUCT_ID = T2.PRODUCT_ID
GROUP BY T1.PRODUCT_CODE 
ORDER BY SALES DESC, PRODUCT_CODE ASC