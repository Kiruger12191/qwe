create table Жанр(
	жанр_ID SERIAL primary key,
	название_жанра varchar(30) not null
);

create table Исполнитель(
	исполнитель_ID SERIAL primary key,
	имя_исполнителя varchar(50) not null
);

create table Исполнители_жанры(
	Исполнители_жанры_ID SERIAL primary key,
	жанры_ID int references Жанры(жанры_ID),
	исполнители_ID int references Исполнитель(исполнитель_ID)
);

create table Альбом(
	альбом_ID SERIAL primary key,
	название_альбома varchar(30) not null,
	год_выпуска int not null
);

create table Исполнители_альбомы(
	исполнители_альбомы_ID SERIAL primary key,
	исполнитель_ID int references Исполнитель(исполнитель_ID),
	альбом_ID int references Альбом(альбом_ID)
);

create table Трек(
	трек_ID SERIAL primary key,
	название_трека varchar(50) not null,
	длительность int not null,
	альбом_ID int references Альбом(aальбом_ID)
);

create table Сборник(
	сборник_ID SERIAL primary key,
	название_сборника varchar(50) not null,
	год_выпуска int not null
);

create table Сборник_альбомов(
	сборник_альбомов_ID SERIAL primary key,
	трек_ID int references Трек(трек_ID),
	сборник_ID int references Сборник(сборник_ID)
);