autocommit off;
select product_code, descr, price
  from inventory_v i
 where price < all { $100000, $10000000 }
rollback;
