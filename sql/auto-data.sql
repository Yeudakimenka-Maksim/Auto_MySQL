--
-- База данных: `auto`
--

--
-- Дамп данных таблицы `klient`
--

INSERT INTO `klient` VALUES(null, 'Zykov', 'Kirill', 'Ivanovich', 'Belarusia', 'Minsk', 'YL.Stervoclova', 1256699);
INSERT INTO `klient` VALUES(null, 'Pupkov', 'Viniamin', 'Sergeevich', 'Belarusia', 'Minsk', 'YL.Lomanosova', 2561489);
INSERT INTO `klient` VALUES(null, 'Pitin', 'Vladimir', 'Vladimirovich', 'Russia', 'Moskva', 'YL.Moskovskaa', 0);
INSERT INTO `klient` VALUES(null, 'Medvedev', 'Dmitriy', 'Anatolivech', 'Russia', 'Moskva', 'YL.Moskovskaa', 1);
INSERT INTO `klient` VALUES(null, 'Mendeleev', 'Dmitriy', 'Ivanovich', 'Belarusia', 'Minsk', 'YL.Mendeleeva', 2654455);

--
-- Дамп данных таблицы `postavchik`
--

INSERT INTO `postavchik` VALUES(null, 'AUDI', 'Germany', 'Berlin');
INSERT INTO `postavchik` VALUES(null, 'MERS', 'Germany', 'Berlin');
INSERT INTO `postavchik` VALUES(null, 'BENTLEY', 'USA', 'Los-Andgeles');
INSERT INTO `postavchik` VALUES(null, 'BMW', 'Germany', 'Berlin');
INSERT INTO `postavchik` VALUES(null, 'KIA', 'Iaponia', 'Tokio');

--
-- Дамп данных таблицы `postavka`
--

INSERT INTO `postavka` VALUES(null, 1, 'Dvigatel', 5, '20.11.2012', 2000);
INSERT INTO `postavka` VALUES(null, 2, 'Kolodki', 6, '20.11.2012', 7000);
INSERT INTO `postavka` VALUES(null, 3, 'Tormoza', 13, '20.11.2012', 5000);
INSERT INTO `postavka` VALUES(null, 5, 'Akkymelator', 2, '20.11.2000', 12000);
INSERT INTO `postavka` VALUES(null, 4, 'Fari', 20, '20.11.2000', 1000);


--
-- Дамп данных таблицы `auto`
--

INSERT INTO `auto` VALUES(null, 2, 'Mers', 'A klass', 2011, 'Germany', 8, 'Cherniy', 55000, 12);
INSERT INTO `auto` VALUES(null, 5, 'BMW', '5', 2012, 'Germany', 6, 'Cherniy', 70000, 23);
INSERT INTO `auto` VALUES(null, 4, 'Bently', 'A', 2012, 'USA', 8, 'Metalik', 100000, 5);
INSERT INTO `auto` VALUES(null, 1, 'Audi', 'A6', 2011, 'Germany', 8, 'Zeleniy', 30000, 17);
INSERT INTO `auto` VALUES(null, 3, 'KIA', 'Sportage', 2011, 'Iaponia', 8, 'Siniy', 55000, 33);

--
-- Дамп данных таблицы `tuning`
--

INSERT INTO `tuning` VALUES(null, 'Tonirovka', 5000);
INSERT INTO `tuning` VALUES(null, 'Pocraska', 11000);
INSERT INTO `tuning` VALUES(null, 'Zamazka', 12000);
INSERT INTO `tuning` VALUES(null, 'Pokritie nerzaveikoy', 20000);
INSERT INTO `tuning` VALUES(null, 'Pomivka', 1000);

--
-- Дамп данных таблицы `zakazi`
--

INSERT INTO `zakazi` VALUES(null, 2, '12.11.2012', 'Nalichka');
INSERT INTO `zakazi` VALUES(null, 3, '13.11.2012', 'Karta');
INSERT INTO `zakazi` VALUES(null, 1, '20.11.2012', 'Nalichka');
INSERT INTO `zakazi` VALUES(null, 5, '12.12.2012', 'Nalichka');
INSERT INTO `zakazi` VALUES(null, 4, '18.12.2012', 'Nalichka');
INSERT INTO `zakazi` VALUES(null, 1, '20.12.1521', 'nalichnimi');

--
-- Дамп данных таблицы `zakaz_auto`
--

INSERT INTO `zakaz_auto` VALUES(2, 1);
INSERT INTO `zakaz_auto` VALUES(1, 2);
INSERT INTO `zakaz_auto` VALUES(5, 3);
INSERT INTO `zakaz_auto` VALUES(3, 4);
INSERT INTO `zakaz_auto` VALUES(4, 5);

--
-- Дамп данных таблицы `zakaz_tuninga`
--

INSERT INTO `zakaz_tuninga` VALUES(1, 1);
INSERT INTO `zakaz_tuninga` VALUES(1, 2);
INSERT INTO `zakaz_tuninga` VALUES(1, 3);
INSERT INTO `zakaz_tuninga` VALUES(1, 4);
INSERT INTO `zakaz_tuninga` VALUES(1, 5);

--
-- Дамп данных таблицы `zapchasti`
--

INSERT INTO `zapchasti` VALUES(null, 2, 'Dvigatel', 12000, 10);
INSERT INTO `zapchasti` VALUES(null, 3, 'Fari', 1000, 20);
INSERT INTO `zapchasti` VALUES(null, 1, 'Akkymylator', 15000, 10);
INSERT INTO `zapchasti` VALUES(null, 5, 'Motor', 14000, 5);
INSERT INTO `zapchasti` VALUES(null, 4, 'Tryba', 100, 200);

--
-- Дамп данных таблицы `zakaz_zapchasti`
--

INSERT INTO `zakaz_zapchasti` VALUES(1, 1);
INSERT INTO `zakaz_zapchasti` VALUES(1, 2);
INSERT INTO `zakaz_zapchasti` VALUES(1, 3);
INSERT INTO `zakaz_zapchasti` VALUES(1, 4);
INSERT INTO `zakaz_zapchasti` VALUES(1, 5);
