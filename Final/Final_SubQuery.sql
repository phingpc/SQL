#LAB SubQuery
use lab9;

####################################################################################
# หาค่าเฉลี่ยของเงินที่จ่ายของแต่ละ ใบเสร็จ

select * from orderdetail ;
select * from ordertbl;
select * from prodtbl;

select o.orderNo, orderdate, prodNo,orderQty 
from ordertbl o join orderdetail d
on o.orderNo = d.orderNO;

# Test
# trick ลองแยกออกเป็นส่วนๆก่อนเพื่อให้ง่ายต่อการทำ
select prodNo,orderQty from orderdetail;
select prodNo,prodPrice from prodtbl;

select orderdetail.prodNo ,orderdetail.orderQty , prodtbl.prodPrice from orderdetail 
join prodtbl on orderdetail.prodNo = prodtbl.prodNo;

select orderdetail.orderNo,orderdetail.orderQty , (orderdetail.orderQty*prodtbl.prodPrice) from orderdetail 
join prodtbl on orderdetail.prodNo = prodtbl.prodNo;

# Ans หาค่าเฉลี่ยของเงินที่จ่ายของแต่ละ ใบเสร็จ ------------------------------------------------------------
select avg(orderdetail.orderQty*prodtbl.prodPrice) from orderdetail 
join prodtbl on orderdetail.prodNo = prodtbl.prodNo;

####################################################################################
#  แสดงรายชื่อลูกค้าและค่าใช้จ่ายแต่ละใบเสร็จที่มียอดค่าใช้จ่ายมากกว่าค่าเฉลี่ยของใบเสร็จทั้งหมด
select * from emptbl;

#Test
#select orderdetail.orderNo,orderdetail.orderQty , (orderdetail.orderQty*prodtbl.prodPrice) ,emptbl.empName from orderdetail ,prodtbl ,emptbl,ordertbl
#where orderdetail.prodNo = prodtbl.prodNo and emptbl.emp = ordertbl.empNo and ordertbl.orderNo = orderdetail.orderNo;



SELECT orderdetail.orderNo, orderdetail.orderQty, emptbl.empName
FROM orderdetail
JOIN prodtbl ON orderdetail.prodNo = prodtbl.prodNo
JOIN ordertbl ON ordertbl.orderNo = orderdetail.orderNo
JOIN emptbl ON emptbl.emp = ordertbl.empNo
WHERE orderdetail.orderQty * prodtbl.prodPrice > (
    SELECT AVG(orderdetail.orderQty * prodtbl.prodPrice)
    FROM orderdetail
    JOIN prodtbl ON orderdetail.prodNo = prodtbl.prodNo
);