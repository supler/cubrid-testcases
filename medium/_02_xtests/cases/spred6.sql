autocommit off;
  select product.product_code, product.descr, product.price,
         quantity, location, shipment_pending
    from inventory_c i;
rollback;
