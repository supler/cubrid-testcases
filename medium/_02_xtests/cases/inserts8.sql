autocommit off;
select product.product_code, product.descr, product.price,
       quantity, expiry_date
  from dated_inventory_c i
 where product.product_code = 3;
insert into dated_inventory_c (product, quantity, expiry_date)
values (
        (select product_c
          from product_c
         where product_code = 3),
        10,
        NULL
       );
select product.product_code, product.descr, product.price,
       quantity, expiry_date
  from dated_inventory_c i
 where product.product_code = 3;
rollback work;
rollback;
