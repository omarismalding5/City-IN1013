-- 1
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*)
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.staff_no, restBill.bill_date
HAVING COUNT(*) >= 2;

-- 2
SELECT room_name, COUNT(*)
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3
SELECT restRest_table.room_name, SUM(restBill.bill_total)
FROM restBill
JOIN restRest_table ON restBill.table_no = restRest_table.table_no
GROUP BY restRest_table.room_name;

-- 4
SELECT headwaiter.first_name, headwaiter.surname, SUM(restBill.bill_total)
FROM restBill
JOIN restStaff ON restBill.waiter_no = waiter.staff_no
JOIN restStaff ON waiter.headwaiter = headwaiter.staff_no
GROUP BY headwaiter.staff_no
ORDER BY total_bill_amount DESC;

-- 5
SELECT cust_name, AVG(bill_total)
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*)
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.staff_no, restBill.bill_date
HAVING COUNT(*) >= 3;