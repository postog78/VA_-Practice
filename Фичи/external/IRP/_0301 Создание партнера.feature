﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных IRP
@Описание: Экспортный сценарий, который заполняет Контрагентов и Организации
@ПримерИспользования: _0301 Создание Партнера и сопутствующих данных
Сценарий: _0301 Создание Партнера и сопутствующих данных

	// Справочник.Companies

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country' | 'MainCompany' | 'Partner'                                                          | 'Type'                          | 'OurCompany' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'False'        | 5      | ''        | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'Enum.CompanyLegalType.Company' | 'False'      | 'Клиент 1'       | ''                 | ''               | ''               |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment'                                                          | 'Description_en'          | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'False'        | ''       | 1      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Клиент 1 (1 соглашение)' | ''                 | ''               | ''               |

	// Справочник.PartnerSegments

	И я проверяю или создаю для справочника "PartnerSegments" объекты:
		| 'Ref'                                                                     | 'DeletionMark' | 'Code' | 'BanOnShipping' | 'Managers' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'False'        | 1      | 'False'         | 'True'     | 'Менеджер 1'     | ''                 | ''               | ''               |

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch'                                                                | 'Basis'                                                                         | 'RowID'                                | 'ProcurementMethod'             | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                               | 'TransactionTypeGR'                                    | 'TransactionType'                                 | 'Requester'                                                           | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
		| 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce222b' | 'False'        | 9      | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c'           | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'Enum.ProcurementMethods.Stock' | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                                                | 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''                   | ''                 | ''                   | 'False'                    | ''                  |
		| 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce2235' | 'False'        | 12     | '802add78-82c0-4435-b03c-0091b061d0b6' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | '802add78-82c0-4435-b03c-0091b061d0b6' | ''                              | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | ''                                                                    | ''                   | ''                 | ''                   | 'False'                    | ''                  |

	// РегистрСведений.ObjectStatuses

	И я проверяю или создаю для регистра сведений "ObjectStatuses" записи:
		| 'Period'              | 'Object'                                                              | 'Status'                                                                 | 'Author' |
		| '22.10.2021 15:40:57' | 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2789' | ''       |

	// РегистрСведений.PartnerSegments

	И я проверяю или создаю для регистра сведений "PartnerSegments" записи:
		| 'Segment'                                                                 | 'Partner'                                                          |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' |

	// Документ.CashReceipt

	И я проверяю или создаю для документа "CashReceipt" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'               | 'Posted' | 'CashAccount'                                                          | 'Company'                                                           | 'Currency'                                                           | 'CurrencyExchange' | 'TransactionType'                                         | 'DocNumber' | 'IgnoreAdvances' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | 'False'        | 1        | '10.03.2021 0:00:00' | 'True'   | 'e1cib/data/Catalog.CashAccounts?ref=b762b13668d0905011eb76684b9f685c' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | ''                 | 'Enum.IncomingPaymentTransactionType.PaymentFromCustomer' | ''          | 'False'          | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            | 1350             |

	И я перезаполняю для объекта табличную часть "PaymentList":
		| 'Ref'                                                                  | 'Key'                                  | 'BasisDocument'                                                         | 'Agreement'                                                          | 'Partner'                                                          | 'Amount' | 'Payer'                                                             | 'PlaningTransactionBasis' | 'AmountExchange' | 'FinancialMovementType' | 'LegalNameContract' |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | '49801495-f9a4-4883-9728-dbb67e2addcf' | 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 950      | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''                        |                  | ''                      | ''                  |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | 'f3081142-94df-4c6e-850f-b3f2e27fd77e' | ''                                                                      | ''                                                                   | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 400      | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | ''                        |                  | ''                      | ''                  |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'Key'                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | '49801495-f9a4-4883-9728-dbb67e2addcf' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 950      | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | '49801495-f9a4-4883-9728-dbb67e2addcf' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 816.05   | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | '49801495-f9a4-4883-9728-dbb67e2addcf' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 950      | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | '49801495-f9a4-4883-9728-dbb67e2addcf' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | 'f3081142-94df-4c6e-850f-b3f2e27fd77e' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | 'f3081142-94df-4c6e-850f-b3f2e27fd77e' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238' | 'f3081142-94df-4c6e-850f-b3f2e27fd77e' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	// Документ.ReconciliationStatement

	И я проверяю или создаю для документа "ReconciliationStatement" объекты:
		| 'Ref'                                                                              | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'BeginPeriod'        | 'ClosingBalanceCredit' | 'ClosingBalanceDebit' | 'Company'                                                           | 'Currency'                                                           | 'EndPeriod'          | 'LegalName'                                                         | 'OpeningBalanceCredit' | 'OpeningBalanceDebit' | 'Partner'                                                          | 'Status'                                                                 | 'Author'                                                        | 'Branch'                                                                | 'Description' |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | 'False'        | 1        | '02.04.2021 12:00:00' | 'True'   | '01.02.2021 0:00:00' | 395                    |                       | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.04.2021 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' |                        |                       | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb7674324a4a21' | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            |

	И я перезаполняю для объекта табличную часть "Transactions":
		| 'Ref'                                                                              | 'Date'                | 'Document'                                                              | 'Debit' | 'Credit' |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | '24.02.2021 10:14:47' | 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2226' | 1210    |          |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | '24.02.2021 10:49:55' | 'e1cib/data/Document.BankReceipt?ref=b76cbacb2511e57d11ebeab0dfce2245'  |         | 1000     |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | '24.02.2021 11:02:48' | 'e1cib/data/Document.CreditNote?ref=b762b13668d0905011eb767f10805dfc'   |         | 15       |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | '02.03.2021 15:00:00' | 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2229'  | -190    |          |
		| 'e1cib/data/Document.ReconciliationStatement?ref=b76cbacb2511e57d11ebeab0dfce2247' | '10.03.2021 0:00:00'  | 'e1cib/data/Document.CashReceipt?ref=b76cbacb2511e57d11ebeab0dfce2238'  |         | 400      |

	// Документ.SalesInvoice

	И я проверяю или создаю для документа "SalesInvoice" объекты:
		| 'Ref'                                                                   | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BasisDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'Manager' | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | 'False'        | 2        | '24.02.2021 10:18:20' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''              | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''        | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            | 950              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                   | 'TotalAmount' | 'NetAmount' | 'ItemKey'                                                          | 'Store'                                                          | 'OffersAmount' | 'Price' | 'Quantity' | 'TaxAmount' | 'Key'                                  | 'Unit'                                                          | 'PriceType'                                                          | 'SalesOrder' | 'DeliveryDate'       | 'Detail' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseShipmentConfirmation' |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | 950           | 791.67      | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' |                | 190     | 5          | 158.33      | '4a11c2e1-2169-4f4e-a584-0d63397a3792' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 5                    | 'True'                    |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                   | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | '4a11c2e1-2169-4f4e-a584-0d63397a3792' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 158.33   | 'True'                 | 158.33         |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                   | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 950      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 816.05   | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 950      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "ShipmentConfirmations":
		| 'Ref'                                                                   | 'Key'                                  | 'ShipmentConfirmation'                                                          | 'Quantity' | 'QuantityInShipmentConfirmation' | 'BasisKey'                             |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | '4a11c2e1-2169-4f4e-a584-0d63397a3792' | 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | 5          | 5                                | '802add78-82c0-4435-b03c-0091b061d0b6' |

	И я перезаполняю для объекта табличную часть "PaymentTerms":
		| 'Ref'                                                                   | 'Date'               | 'ProportionOfPayment' | 'DuePeriod' | 'Amount' | 'CalculationType'                          |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | '03.03.2021 0:00:00' | 100                   | 7           | 950      | 'Enum.CalculationTypes.PostShipmentCredit' |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                   | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis'                                                                         | 'CurrentStep'                                 | 'NextStep' | 'RowRef'                                                         | 'BasisKey'                             |
		| 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2237' | '4a11c2e1-2169-4f4e-a584-0d63397a3792' | '802add78-82c0-4435-b03c-0091b061d0b6' | 5          | 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | 'e1cib/data/Catalog.MovementRules?refName=SI' | ''         | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce2235' | '802add78-82c0-4435-b03c-0091b061d0b6' |

	// Документ.SalesOrder

	И я проверяю или создаю для документа "SalesOrder" объекты:
		| 'Ref'                                                                 | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment'                                                          | 'Partner'                                                          | 'PriceIncludeTax' | 'Status'                                                                 | 'UseItemsShipmentScheduling' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | 'False'        | 2        | '24.02.2021 11:13:25' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2789' | 'True'                       | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            | 2835             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                 | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'DeliveryDate'       | 'ProcurementMethod'             | 'Detail' | 'ProfitLossCenter' | 'RevenueType' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'CancelReason' | 'PartnerItem' | 'ReservationDate'    |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 2362.5      | 315            | 450     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 7          | 472.5       | 2835          | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | '01.01.0001 0:00:00' | 'Enum.ProcurementMethods.Stock' | ''       | ''                 | ''            | 'False'            | 7                    | ''             | ''            | '01.01.0001 0:00:00' |

	И я перезаполняю для объекта табличную часть "SpecialOffers":
		| 'Ref'                                                                 | 'Key'                                  | 'Offer'                                                                 | 'Amount' | 'Percent' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'e1cib/data/Catalog.SpecialOffers?ref=b762b13668d0905011eb767f10805e0f' | 315      |           |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                 | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 472.5    | 'True'                 | 472.5          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                 | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 2835     | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 2435.27  | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 2835     | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "PaymentTerms":
		| 'Ref'                                                                 | 'Date'               | 'ProportionOfPayment' | 'DuePeriod' | 'Amount' | 'CalculationType'                          |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '03.03.2021 0:00:00' | 100                   | 7           | 2835     | 'Enum.CalculationTypes.PostShipmentCredit' |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                 | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                       | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 7          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SI_SC' | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce222b' | ''         |

	// Документ.ShipmentConfirmation

	И я проверяю или создаю для документа "ShipmentConfirmation" объекты:
		| 'Ref'                                                                           | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Company'                                                           | 'LegalName'                                                         | 'Partner'                                                          | 'TransactionType'                                 | 'Author'                                                        | 'Branch'                                                                | 'Description' |
		| 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | 'False'        | 3        | '24.02.2021 10:17:04' | 'True'   | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                           | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'Unit'                                                          | 'Quantity' | 'ShipmentBasis' | 'QuantityInBaseUnit' | 'SalesOrder' | 'SalesInvoice' | 'InventoryTransferOrder' | 'InventoryTransfer' | 'PurchaseReturnOrder' | 'PurchaseReturn' |
		| 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | '802add78-82c0-4435-b03c-0091b061d0b6' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 5          | ''              | 5                    | ''           | ''             | ''                       | ''                  | ''                    | ''               |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                           | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.ShipmentConfirmation?ref=b76cbacb2511e57d11ebeab0dfce2236' | '802add78-82c0-4435-b03c-0091b061d0b6' | '802add78-82c0-4435-b03c-0091b061d0b6' | 5          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SI' | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce2235' | ''         |

