##### Union
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
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


##### В результирующий набор попадают только те строки, которые присутствуют в обоих запросах (INTERSECT) или только те строки первого запроса, которые отсутствуют во втором (EXCEPT).
Найдите производителя, выпускающего ПК, но не ПК-блокноты.
```
Select product.maker from product
where product.type like 'PC'
EXCEPT
select product.maker from product
where product.type like 'Laptop'
```

##### Подзапросы select
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
```
Select printer.model, printer.price from printer
where printer.price in(select max(printer.price) from printer)
```

###### Предложение HAVING
15. Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
```
select pc.hd from pc
group by pc.hd
HAVING COUNT(*) > 1;
```

###### :)
Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
```
select pc.model, newpc.model, pc.speed, pc.ram from pc, pc as newpc
where pc.speed = newpc.speed and pc.ram = newpc.ram and pc.model > newpc.model
```

###### :)
Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed
```
Select product.type, product.model, laptop.speed from laptop
inner join product on product.model = laptop.model
where product.type like 'Laptop' and laptop.speed < (select min(pc.speed) from pc)
```
