autocommit off;
  select i.product.product_code, i.product.descr, i.location,
         ((i.quantity-s.quantity)*i.product.price)
    from inventory_c i, shipment_c s
   where i.location = s.original_loc
     and i.product = s.product
     and i.shipment_pending = 'yes';
rollback;
