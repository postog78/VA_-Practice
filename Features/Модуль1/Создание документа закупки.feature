﻿#language: ru

Функционал: Проверка расчета суммы документа Заказ (подсистема Продажи)

Я хочу прооверить правильность расчета суммы при изменении количества и цены

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Проверка правильности расчета суммы от изменения количества и цены
	И я закрываю все окна клиентского приложения
*Открытие формы существующего документа и очистка всех строк
	Когда В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
	И я удаляю все строки таблицы "Товары"
*Проверка Суммы после удаления строк
	Тогда значение поля "Сумма (итог)" содержит текст "0"
*Заполнение существующего документа новыми строками
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'Сапоги'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '150,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Товар'  |
		| 'Сапоги' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '3 050,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Сумма'  | 'Товар'   |
		| '150,00' | 'Ботинки' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" я завершаю редактирование строки
*Проверка Суммы после добавления строк
	Тогда значение поля "Сумма (итог)" содержит текст "3 200"
*Закрытие документа без сохранения
	И Я закрываю окно 'Заказ * от * *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
*Создание нового документа
	Когда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'           |
		| '000000016' | 'Магазин "Мясная лавка"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000020' | 'Валенки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 100,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
*Проверка Суммы после добавления строки
	Тогда значение поля "Сумма (итог)" содержит текст "3 300"
	И Я запоминаю значение поля 'Сумма (итог)' как '$СуммаИтог$'
*Запись документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
*Повторная проверка что сумма не изменилась
	Тогда значение поля "Сумма (итог)" содержит текст '$СуммаИтог$'
*Закрытие окна
	Тогда открылось окно 'Заказ * от *'
	И Я закрываю окно 'Заказ * от *'    
		

	
		

	
	