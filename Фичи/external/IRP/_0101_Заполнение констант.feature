﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
@ТипШага: Загрузка данных IRP
@Описание: Экспортный сценарий, который заполняет константы
@ПримерИспользования: _0101 Заполнение констант
Сценарий: _0101 Заполнение констант

	И я перезаполняю константу "SaasMode" значением "False"

	И я перезаполняю константу "EnableLinkedRowsIntegrity" значением "False"

	И я перезаполняю константу "UseLockDataModification" значением "False"

	И я перезаполняю константу "UseItemKey" значением "True"

	И я перезаполняю константу "UseCompanies" значением "True"

	И я перезаполняю константу "NotFirstStart" значением "False"

