#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных IRP
@Описание: Экспортный сценарий, который заполняет Контрагентов и Организации
@ПримерИспользования: _0105 Создание Контрагентов и Организаций
Сценарий: _0105 Создание Контрагентов и Организаций

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country'                                                           | 'MainCompany' | 'Partner'                                                          | 'Type'                             | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'False'        | 1      | 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | ''            | ''                                                                 | 'Enum.CompanyLegalType.Company'    | 'True'       | 'Собственная компания 1' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb76684b9f685b' | 'False'        | 2      | ''                                                                  | ''            | ''                                                                 | 'Enum.CompanyLegalType.Company'    | 'True'       | 'Собственная компания 2' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b276f' | 'False'        | 3      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Поставщик 1'            | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'False'        | 4      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Поставщик 2'            | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'False'        | 5      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Клиент 1'               | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | 'False'        | 6      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Клиент 2'               | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e27' | 'False'        | 7      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Клиент и поставщик'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e28' | 'False'        | 8      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7951' | 'Enum.CompanyLegalType.Company'    | 'False'      | 'Главный партнер'        | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e29' | 'False'        | 9      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный покупатель'   | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b76cbacb2511e57d11ebeab0dfce2249' | 'False'        | 10     | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный клиент 1'     | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                               | 'MovementType'                                                                                    |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb76684b9f685b' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |

	// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment'                                                          | 'Partner' | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                  | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm'                                                              | 'Description_en'                                                  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'False'        | 1      | '123456' | '01.01.2021 0:00:00' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | ''        | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByDocuments' | ''                  | 'Enum.AgreementKinds.Regular' | 'True'           | 5000                | 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | ''                 | ''               | ''               |

