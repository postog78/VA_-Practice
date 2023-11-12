﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Заполнение шапок документов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных
@Описание: Экспортный сценарий, который заполняет шапку документа заказа клиента
@ПримерИспользования: И Заполняю шапку Заказа клиента
Сценарий: Заполняю шапку заказа клиента
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'   |
		| '000000011' | 'ЭлектроБыт ЗАО' |
И в таблице "Список" я выбираю текущую строку
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
