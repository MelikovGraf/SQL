Для каждой группы блокнотов с одинаковым номером модели добавить запись в таблицу PC со следующими характеристиками:
код: минимальный код блокнота в группе +20;
модель: номер модели блокнота +1000;
скорость: максимальная скорость блокнота в группе;
ram: максимальный объем ram блокнота в группе *2;
hd: максимальный объем hd блокнота в группе *2;
cd: значение по умолчанию;
цена: максимальная цена блокнота в группе, уменьшенная в 1,5 раза.
Замечание. Считать номер модели числом.
```
insert into pc ( code, model, speed, ram, hd, price )
select min ( code ) + 20,
            model + 1000,
            max ( speed ),
            max ( ram ) * 2,
            max ( hd ) * 2,
            max ( price ) / 1.5
     from laptop group by model
```

Удалить из таблицы PC компьютеры, имеющие минимальный объем диска или памяти. 
```
DELETE FROM PC WHERE
pc.ram=(select MIN(ram) from pc) or
pc.hd=(select MIN(hd) from pc)
```
