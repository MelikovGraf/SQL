##### Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
```
Select pc.model, pc.price from pc 
inner join product on product.model = pc.model
where product.maker like 'B'
union 
Select laptop.model, laptop.price from laptop 
inner join product on product.model = laptop.model
where product.maker like 'B'
union 
Select printer.model, printer.price from printer 
inner join product on product.model = printer.model
where product.maker like 'B'
order by price desc;
```


#### В результирующий набор попадают только те строки, которые присутствуют в обоих запросах (INTERSECT) или только те строки первого запроса, которые отсутствуют во втором (EXCEPT).
##### Найдите производителя, выпускающего ПК, но не ПК-блокноты.
```Select product.maker from product
where product.type like 'PC'
EXCEPT
select product.maker from product
where product.type like 'Laptop'```
