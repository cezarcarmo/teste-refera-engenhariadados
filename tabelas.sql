select * from customers
into outfile '/wamp64/tmp/customers.csv'
fields terminated by ','
lines terminated by '\n';

select * from employees
into outfile '/wamp64/tmp/employees.csv'
fields terminated by ','
lines terminated by '\n';

select * from offices
into outfile '/wamp64/tmp/offices.csv'
fields terminated by ','
lines terminated by '\n';

select * from orderdetails
into outfile '/wamp64/tmp/orderdetails.csv'
fields terminated by ','
lines terminated by '\n';

select * from orders
into outfile '/wamp64/tmp/orders.csv'
fields terminated by ','
lines terminated by '\n';

select * from payments
into outfile '/wamp64/tmp/payments.csv'
fields terminated by ','
lines terminated by '\n';

select * from productlines
into outfile '/wamp64/tmp/productlines.csv'
fields terminated by ','
lines terminated by '\n';

select * from products
into outfile '/wamp64/tmp/products.csv'
fields terminated by ','
lines terminated by '\n';