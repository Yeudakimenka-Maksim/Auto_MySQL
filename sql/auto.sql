create database auto;

use auto;

create table klient
(
  kod_klienta int auto_increment,
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
  kod_postavchika int auto_increment,
  ima_postavchika varchar(255),
  strana varchar(255),
  gorod varchar(255),
primary key (kod_postavchika)
);

create table postavka
(
  kod_postavki int auto_increment,
  kod_postavchika int,
  postavlenii_prodykt varchar(255),
  kolichestvo int,
  data_postavki varchar(255),
  stoimosti int,
primary key (kod_postavki)
);
alter table postavka add constraint fk_postavka_1 foreign key (kod_postavchika) references postavchik (kod_postavchika) on delete cascade on update cascade;

create table auto
(
  kod_auto int auto_increment,
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
alter table auto add constraint fk_auto_1 foreign key (kod_postavki) references postavka (kod_postavki) on delete cascade on update cascade;

create table tuning
(
  kod_tuninga int auto_increment,
  yslygi varchar(255),
  stoimosti int,
primary key (kod_tuninga)
);

create table zakazi
(
  kod_zakaza int auto_increment,
  kod_klienta int,
  data varchar(255),
  sposob_oplati varchar(255),
primary key (kod_zakaza)
);
alter table zakazi add constraint fk_zakazi_1 foreign key (kod_klienta) references klient (kod_klienta) on delete cascade on update cascade;

create table zakaz_auto
(
  kod_zakaza int,
  kod_auto int,
primary key (kod_zakaza, kod_auto)
);
alter table zakaz_auto add constraint fk_zakaz_auto_1 foreign key (kod_auto) references auto (kod_auto) on delete cascade on update cascade;
alter table zakaz_auto add constraint fk_zakaz_auto_2 foreign key (kod_zakaza) references zakazi (kod_zakaza) on delete cascade on update cascade;

create table zakaz_tuninga
(
  kod_zakaza int,
  kod_tuninga int,
primary key (kod_tuninga, kod_zakaza)
);
alter table zakaz_tuninga add constraint fk_zakaz_tuninga_1 foreign key (kod_zakaza) references zakazi (kod_zakaza) on delete cascade on update cascade;
alter table zakaz_tuninga add constraint fk_zakaz_tuninga_2 foreign key (kod_tuninga) references tuning (kod_tuninga) on delete cascade on update cascade;

create table zapchasti
(
  kod_zapchasti int auto_increment,
  kod_postavki int,
  naimenovanie_zapchasti varchar(255),
  cena int,
  kolichestvo_na_sklade int,
primary key (kod_zapchasti)
);
alter table zapchasti add constraint fk_zapchasti_1 foreign key (kod_postavki) references postavka (kod_postavki) on delete cascade on update cascade;

create table zakaz_zapchasti
(
  kod_zakaza int,
  kod_zapchasti int,
primary key (kod_zakaza, kod_zapchasti)
);
alter table zakaz_zapchasti add constraint fk_zakaz_zapchasti_1 foreign key (kod_zapchasti) references zapchasti (kod_zapchasti) on delete cascade on update cascade;
alter table zakaz_zapchasti add constraint fk_zakaz_zapchasti_2 foreign key (kod_zakaza) references zakazi (kod_zakaza) on delete cascade on update cascade;

create table sklad
(
  kod int auto_increment,
  tip_produkta varchar(255),
  kod_produkta int not null,
  naimenovanie varchar(255),
  postavchik varchar(255),
  data_postavki varchar(255),
  cena int,
  kolichestvo int,
primary key (kod)
);

create table user
(
  kod_usera int auto_increment,
  login varchar(255),
  parol varchar(255),
primary key (kod_usera)
);

-- insert into sklad (tip_produkta, kod_produkta, naimenovanie, cena, kolichestvo)
-- select 'auto', kod_auto, CONCAT(marka, ' ', model), cena, kolvo
-- from auto;

-- insert into sklad (tip_produkta, kod_produkta, naimenovanie, cena, kolichestvo)
-- select 'zapchast', kod_zapchasti, naimenovanie_zapchasti, cena, kolichestvo_na_sklade
-- from zapchasti;

/* ------------------------------------------------------------------------------------------------------------------ */

drop trigger if exists sposob_oplati;
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

drop trigger if exists dobavit_auto_na_sklad;
delimiter ^
create trigger dobavit_auto_na_sklad after insert on auto 
for each row
begin
  declare k int;
  declare p varchar(255);
  declare d varchar(255);

  select data_postavki
  from postavka
  where kod_postavki = new.kod_postavki
  into d;
  
  select kod_postavchika
  from postavka
  where kod_postavki = new.kod_postavki
  into k;
  
  select ima_postavchika
  from postavchik
  where kod_postavchika = k
  into p;
  
  insert into sklad (tip_produkta, kod_produkta, naimenovanie, postavchik, data_postavki, cena, kolichestvo)
  values ('auto', new.kod_auto, CONCAT(new.marka, ' ', new.model), p, d, new.cena, new.kolvo);
end
 ^
delimiter ;

drop trigger if exists izmenit_auto_na_sklade;
delimiter ^
create trigger izmenit_auto_na_sklade after update on auto 
for each row
begin
  update sklad 
  set kolichestvo = new.kolvo
  where tip_produkta = 'auto' and naimenovanie = CONCAT(old.marka, ' ', old.model);
end
 ^
delimiter ;

drop trigger if exists udalit_auto_so_sklada;
delimiter ^
create trigger udalit_auto_so_sklada after delete on auto 
for each row
begin
  delete from sklad 
  where tip_produkta = 'auto' and naimenovanie = CONCAT(old.marka, ' ', old.model);
end
 ^
delimiter ;

drop trigger if exists dobavit_zapchast_na_sklad;
delimiter ^
create trigger dobavit_zapchast_na_sklad after insert on zapchasti 
for each row
begin
  declare k int;
  declare p varchar(255);
  declare d varchar(255);

  select data_postavki
  from postavka
  where kod_postavki = new.kod_postavki
  into d;
  
  select kod_postavchika
  from postavka
  where kod_postavki = new.kod_postavki
  into k;
  
  select ima_postavchika
  from postavchik
  where kod_postavchika = k
  into p;
  
  insert into sklad (tip_produkta, kod_produkta, naimenovanie, postavchik, data_postavki, cena, kolichestvo)
  values ('zapchast', new.kod_zapchasti, new.naimenovanie_zapchasti, p, d, new.cena, new.kolichestvo_na_sklade);
end
 ^
delimiter ;

drop trigger if exists izmenit_zapchast_na_sklade;
delimiter ^
create trigger izmenit_zapchast_na_sklade after update on zapchasti 
for each row
begin
  update sklad 
  set kolichestvo = new.kolichestvo_na_sklade
  where tip_produkta = 'zapchast' and naimenovanie = old.naimenovanie_zapchasti;
end
 ^
delimiter ;

drop trigger if exists udalit_zapchast_so_sklada;
delimiter ^
create trigger udalit_zapchast_so_sklada after delete on zapchasti 
for each row
begin
  delete from sklad 
  where tip_produkta = 'zapchast' and naimenovanie = old.naimenovanie_zapchasti;
end
 ^
delimiter ;
