CREATE TABLE `data_platform_production_routing_header_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Product`                        int(2) NOT NULL,           -- 新規追加
  `Plant`                          varchar(4) NOT NULL,       -- 新規追加
  `DocType`                        varchar(4) NOT NULL,       -- 新規追加
  `DocID`                          int(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `DocType`, `DocID`, `DocVersionID`),
    CONSTRAINT `DataPlatformPaymentRequisitionPaymentRequisitionPDFData_fk` FOREIGN KEY (`BusinessPartner`, `Product`, `Plant`) REFERENCES `data_platform_production_routing_header_data` (`BusinessPartner`, `Product`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
