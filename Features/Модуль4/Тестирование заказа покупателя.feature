﻿#language: ru

@tree

Функционал: Тестирование заказа покупателя


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Создание необходимых объектов для проверки заказа
И _0101 Заполнение констант
И _0102 Создание объектов для справочника Currencies
И _0103 Создание объектов для справочника Partners
И _0104 Создание объектов для справочника PartnerSegments
И _0105 Создание Контрагентов и Организаций




Сценарий: Проверка заполнения заказа покупателя с выбранным Поставщиком
*Проверка того, что при выборе Партнера заполняется Контрагент
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '1'   | 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	И реквизиты формы имеют значение:
		| 'Agreement'                              | 'Соглашение с клиентами (расчет по документам + кредитный лимит)'                                                                                                                                                                        | ''          |
		| 'Company'                                | 'Собственная компания 1'                                                                                                                                                                                                                 | ''          |
		| 'Currency'                               | 'USD'                                                                                                                                                                                                                                    | ''          |
		| 'LegalName'                              | 'Клиент 1'                                                                                                                                                                                                                               | ''          |
		| 'Partner'                                | 'Клиент 1 (1 соглашение)'                                                                                                                                                                                                                | ''          |
	@screenshot
*Проверка того, что если не выбрать Партнера, Контрагент не доступен
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	И элемент формы "Контрагент" не доступен
	@screenshot
		

