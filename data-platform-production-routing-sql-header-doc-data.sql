CREATE TABLE `data_platform_production_routing_header_doc_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Product`                        int(2) NOT NULL,           -- 新規追加
  `Plant`                          varchar(4) NOT NULL,       -- 新規追加
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformProductionRoutingHeaderDocData_fk` FOREIGN KEY (`BusinessPartner`, `Product`, `Plant`) REFERENCES `data_platform_production_routing_header_data` (`BusinessPartner`, `Product`, `Plant`),
    CONSTRAINT `DataPlatformProductionRoutingHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformProductionRoutingHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
