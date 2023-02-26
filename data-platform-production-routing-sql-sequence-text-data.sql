CREATE TABLE `data_platform_production_routing_sequence_text_data`
(
  `ProductionRoutingGroup`         varchar(8) NOT NULL,
  `ProductionRouting`              varchar(2) NOT NULL,
  `ProductionRoutingSequence`      varchar(6) NOT NULL,
  `ProductionRoutingSqncIntVers`   varchar(8) NOT NULL,
  `ChangeNumber`                   varchar(12) DEFAULT NULL,
  `ValidityStartDate`              date DEFAULT NULL,
  `ValidityEndDate`                date DEFAULT NULL,
  `SequenceCategory`               int(1) DEFAULT NULL,   
  `BillOfOperationsRefSequence`    varchar(6) DEFAULT NULL,
  `MinimumLotSizeQuantity`         varchar(15) DEFAULT NULL,
  `MaximumLotSizeQuantity`         varchar(15) DEFAULT NULL,
  `BillOfOperationsUnit`           varchar(3) DEFAULT NULL,
  `SequenceText`                   varchar(40) DEFAULT NULL,
  `CreationDate`                   date DEFAULT NULL,
  `LastChangeDate`                 date DEFAULT NULL,
    PRIMARY KEY (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingSequence`, `ProductionRoutingSqncIntVers`)
    CONSTRAINT `DataPlatformProductionRoutingSequenceTextData_fk` FOREIGN KEY (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`) REFERENCES `sap_production_routing_header_data` (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
