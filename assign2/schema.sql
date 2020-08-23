create table Buildings (
	id          integer,
	unswid      varchar(100),
	name        varchar(100),
	campus      varchar(2),
	primary key (id)
);

create table Rooms (
	id          integer,
	unswid		varchar(100),
	name        varchar(100),
	building    integer references Buildings(id),
	capacity    integer,
	primary key (id)
);

create table Staff (
	id          integer,
	office      integer references Rooms(id),
	phone       varchar(100),
	primary key (id)
);

