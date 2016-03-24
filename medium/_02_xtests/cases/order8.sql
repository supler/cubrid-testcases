autocommit off;
  select product.product_code, product.descr, product.price
    from inventory_c i
group by product.product_code, product.descr, product.price
order by product.product_code asc;
rollback;
