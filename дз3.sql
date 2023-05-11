-- Задание №2
select название_сборника
  from Сборник
 where год_выпуска between 2018 and 2020;


select имя_исполнителя
  from Исполнитель
 where имя_исполнителя not like '% %';


select название_трека
  from Трек
 where lower(название_трека) like 'мой'
    or lower(название_трека) like 'мой %'
    or lower(название_трека) like '% мой'
    or lower(название_трека) like '% мой %';

-- Задание №3
  select название_жанра, count(*)
    from Жанр Ж
    join Исполнители_жанры ИЖ on Ж.жанр_ID = ИЖ.жанр_ID
group by Ж.жанр_ID
order by count(исполнитель_ID);


select count(*) as количество_треков
  from Трек
  join Альбом on Трек.альбом_ID = Альбом.альбом_ID
 where год_выпуска between 2019 and 2020;
 

  select альбом_ID, avg(длительность)
    from Трек
group by альбом_ID
order by альбом_ID;


select имя_исполнителя
  from Исполнитель
 where имя_исполнителя not in (
	select имя_исполнителя
  	from Исполнитель Ис
  	join Исполнители_альбомы ИА on Ис.исполнитель_ID = ИА.исполнитель_ID
  	join Альбом А on ИА.альбом_ID = А.альбом_ID
 	where год_выпуска = 2020);


select distinct название_сборника
  from Сборник Сб
  join Сборник_альбомов СА on Сб.сборник_ID = СА.сборник_ID
  join Трек on СА.трек_ID = Трек.трек_ID
  join Исполнители_альбомы ИА on Трек.альбом_ID = ИА.альбом_ID
  join Исполнитель Ис on ИА.исполнитель_ID = Ис.исполнитель_ID
 where имя_исполнителя = 'Леди Гага';

