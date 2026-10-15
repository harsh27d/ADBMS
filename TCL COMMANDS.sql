-- Start a new transactioon 
/* Begin;
-- or 
START TTRANSACTION -- To execute multiple statements as a single transaction,
we must explicitly  start the transaction 
*/
create database TCL;
use TCL;

create table orders(
order_id int primary key ,
customer_name varchar(100),
status varchar(50)
);

desc orders;
-- start transaction -- 
set autocommit = 0 ;/* ini mysql auto commit mode is enabled by default which  means whenever */

BEGIN ;
INSERT INTO orders VALUES(101 , 'Geet' , 'Pending');
INSERT INTO orders VALUES(102 , 'Bob' , 'Pending');
update orders set customer_name = 'Raj' where order_id = 102;
truncate table orders;
select * from orders;
commit;
update orders set customer_name = 'Raj' where order_id = 102;
rollback;



