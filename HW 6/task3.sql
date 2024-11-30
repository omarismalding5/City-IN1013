-- 1
SELECT DISTINCT restStaff.first_name, restStaff.surname
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
WHERE restBill.cust_name = 'Tanya Singh';

-- 2
SELECT restRoom_management.room_date
FROM restRoom_management
JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restRoom_management.room_name = 'Green' AND restStaff.first_name = 'Charles' AND restRoom_management.room_date BETWEEN '160201' AND '160229';

-- 3
SELECT first_name, surname
FROM restStaff
WHERE headwaiter = (SELECT headwaiter FROM restStaff WHERE first_name = 'Zoe' AND surname = 'Ball');

-- 4
SELECT cust_name, bill_total, waiter_no
FROM restBill
ORDER BY bill_total DESC;

-- 5
SELECT restStaff.first_name, restStaff.surname
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
WHERE restBill.table_no IN (SELECT restBill.table_no FROM restBill WHERE restBill.bill_no IN (14, 17));

-- 6
SELECT restStaff.first_name, restStaff.surname, restStaff.staff_no
FROM restRoom_management
JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restRoom_management.room_name = 'Blue' AND restRoom_management.room_date = 160312;