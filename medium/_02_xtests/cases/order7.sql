autocommit off;
  select product.product_code
    from inventory_c i
group by product.product_code
order by product.product_code desc;
rollback;
