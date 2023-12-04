#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных IRP
@Описание: Экспортный сценарий, который заполняет Партнеров
@ПримерИспользования: _0103 Создание объектов для справочника Partners
Сценарий: _0103 Создание объектов для справочника Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent'                                                           | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment'                                                          | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'False'        | ''                                                                 | 1      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Клиент 1 (1 соглашение)'    | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'False'        | ''                                                                 | 2      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7956' | 'Клиент 2 (2 соглашения)'    | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | 'False'        | ''                                                                 | 3      | 'False'    | 'True'   | 'False'    | 'False'    | ''                                                                        | 'Поставщик 1 (1 соглашение)' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'False'        | ''                                                                 | 4      | 'False'    | 'True'   | 'False'    | 'False'    | ''                                                                        | 'Поставщик 2'                | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'False'        | ''                                                                 | 5      | 'True'     | 'True'   | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Клиент и поставщик'         | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7950' | 'False'        | ''                                                                 | 6      | 'False'    | 'False'  | 'True'     | 'False'    | ''                                                                        | 'Сотрудник 1'                | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7951' | 'False'        | ''                                                                 | 7      | 'False'    | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Главный партнер'            | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'False'        | ''                                                                 | 10     | 'True'     | 'False'  | 'False'    | 'False'    | ''                                                                        | 'Розничный покупатель'       | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7957' | 'False'        | ''                                                                 | 11     | 'False'    | 'False'  | 'True'     | 'False'    | ''                                                                        | 'Сотрудник 2'                | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'False'        | ''                                                                 | 12     | 'True'     | 'False'  | 'False'    | 'False'    | ''                                                                        | 'Розничный клиент 1'         | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7952' | 'False'        | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7951' | 8      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Торговая точка 1'           | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7953' | 'False'        | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7951' | 9      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Торговая точка 2'           | ''                 | ''               | ''               |

@ТипШага: Загрузка данных IRP
@Описание: Экспортный сценарий, который заполняет Сегменты партнеров
@ПримерИспользования: _0104 Создание объектов для справочника PartnerSegments
Сценарий: _0104 Создание объектов для справочника PartnerSegments

	И я проверяю или создаю для справочника "PartnerSegments" объекты:
		| 'Ref'                                                                     | 'DeletionMark' | 'Code' | 'BanOnShipping' | 'Managers' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'False'        | 1      | 'False'         | 'True'     | 'Менеджер 1'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7956' | 'False'        | 2      | 'False'         | 'True'     | 'Менеджер 2'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | 'False'        | 3      | 'False'         | 'False'    | 'Основной'       | ''                 | ''               | ''               |

