autocommit off;
select product.product_code, product.descr, shipment_pending
from inventory_c i
where location = 'marseilles'
  and shipment_pending is null;
rollback;
