create database auto;

use auto;

create table klient
(
  kod_klienta int,
  familya varchar(255),
  ima varchar(255),
  otchestvo varchar(255),
  strana varchar(255),
  gorod varchar(255),
  adres varchar(255),
  telefon int,
primary key (kod_klienta)
);

create table postavchik
(
  kod_postavchika int,
  ima_postavchika varchar(255),
  strana varchar(255),
  gorod varchar(255),
primary key (kod_postavchika)
);

create table postavka
(
  kod_postavki int,
  kod_postavchika int,
  postavlenii_prodykt varchar(255),
  kolichestvo int,
  data_postavki varchar(255),
  stoimosti int,
primary key (kod_postavki)
);
alter table postavka add constraint fk_postavka_1 foreign key (kod_postavchika) references postavchik (kod_postavchika);

create table auto
(
  kod_auto int,
  kod_postavki int,
  marka varchar(255),
  model varchar(255),
  god_vipyska int,
  strana varchar(255),
  obym_dvigatela int,
  cvet varchar(255),
  cena int,
  kolvo int,
primary key (kod_auto)
);
alter table auto add constraint fk_auto_1 foreign key (kod_postavki) references postavka (kod_postavki);

create table tuning
(
  kod_tuninga int,
  yslygi varchar(255),
  stoimosti int,
primary key (kod_tuninga)
);

create table zakazi
(
  kod_zakaza int,
  kod_klienta int,
  data varchar(255),
  sposob_oplati varchar(255),
primary key (kod_zakaza)
);
alter table zakazi add constraint fk_zakazi_1 foreign key (kod_klienta) references klient (kod_klienta);

create table zakaz_auto
(
  kod_zakaza int,
  kod_auto int,
primary key (kod_zakaza, kod_auto)
);
alter table zakaz_auto add constraint fk_zakaz_auto_1 foreign key (kod_auto) references auto (kod_auto);
alter table zakaz_auto add constraint fk_zakaz_auto_2 foreign key (kod_zakaza) references zakazi (kod_zakaza);

create table zakaz_tuninga
(
  kod_zakaza int,
  kod_tuninga int,
primary key (kod_tuninga, kod_zakaza)
);
alter table zakaz_tuninga add constraint fk_zakaz_tuninga_1 foreign key (kod_zakaza) references zakazi (kod_zakaza);
alter table zakaz_tuninga add constraint fk_zakaz_tuninga_2 foreign key (kod_tuninga) references tuning (kod_tuninga);

create table zapchasti
(
  kod_zapchasti int,
  kod_postavki int,
  naimenovanie_zapchasti varchar(255),
  cena int,
  kolichestvo_na_sklade int,
primary key (kod_zapchasti)
);
alter table zapchasti add constraint fk_zapchasti_1 foreign key (kod_postavki) references postavka (kod_postavki);

create table zakaz_zapchasti
(
  kod_zakaza int,
  kod_zapchasti int,
primary key (kod_zakaza, kod_zapchasti)
);
alter table zakaz_zapchasti add constraint fk_zakaz_zapchasti_1 foreign key (kod_zapchasti) references zapchasti (kod_zapchasti);
alter table zakaz_zapchasti add constraint fk_zakaz_zapchasti_2 foreign key (kod_zakaza) references zakazi (kod_zakaza);

/* ------------------------------------------------------------------------------------------------------------------ */

create user user1@localhost identified by '1';
create user user2@localhost identified by '2';
create user user3@localhost identified by '3';
create user user4@localhost identified by '4';

grant all privileges on *.* to user1@localhost identified by '1';
grant select, insert, update, delete, index, alter, create, drop, file on *.* to user2@localhost identified by '2';
grant select, insert on auto.* to user3@localhost identified by '3';
grant select, delete, insert (naimenovanie_zapchasti, cena, kolichestvo_na_sklade) on zapchasti to user4@localhost identified by '4';
grant select, delete, insert (marka, model, god_vipyska, strana, obym_dvigatela, cvet, cena) on auto to user4@localhost identified by '4';

/* ------------------------------------------------------------------------------------------------------------------ */

explain select distinct klient.* 
from klient inner join zakazi on klient.kod_klienta = zakazi.kod_klienta; 

explain select distinct klient.* 
from klient 
where klient.kod_klienta in (select zakazi.kod_klienta from zakazi); 

/* ------------------------------------------------------------------------------------------------------------------ */

delimiter ^
create trigger auto_decr after delete on zakaz_auto 
for each row
begin
  select kolvo from auto where kod_auto = old.kod_auto into @a;
  set @a = @a - 1;
  update auto set kolvo = @a where kod_auto = old.kod_auto;
end
 ^
delimiter ;

delimiter ^
create trigger sposob_oplati before insert on zakazi 
for each row
begin
  if new.sposob_oplati is null then 
    set new.sposob_oplati = 'nalichnimi';
  end if;
end
 ^
delimiter ;


delimiter ^
create procedure klient()
begin
  select distinct klient.*
  from klient inner join zakazi on klient.kod_klienta = zakazi.kod_klienta;
end
 ^
delimiter ;
call klient;

delimiter ^
create procedure postavchik(in ima varchar(255))
begin
  select auto.*
  from postavchik inner join (postavka inner join auto on postavka.kod_postavki = auto.kod_postavki) on postavchik.kod_postavchika = postavka.kod_postavchika
  where ima_postavchika like ima;
end
 ^
delimiter ;
call postavchik("bmw");
