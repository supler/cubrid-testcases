autocommit off;
  select  product_code ,  descr , location , cost - $1000000
  from unsold_stock_v u
  where cost >= $1000000;
rollback;
