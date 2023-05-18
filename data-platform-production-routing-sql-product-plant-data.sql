CREATE TABLE `data_platform_production_routing_product_plant_data`
(
  `BusinessPartner`                  int(12) NOT NULL,
  `Product`                          varchar(40) NOT NULL,
  `Plant`                            varchar(4) NOT NULL,
  `ProductionRoutingGroup`           varchar(8) NOT NULL,
  `ProductionRouting`                varchar(2) NOT NULL,
  `ProductionRoutingMatlAssgmt`      varchar(7) NOT NULL,
  `ProductionRtgMatlAssgmtIntVers`   varchar(8) NOT NULL,
  `CreationDate`                     date DEFAULT NULL,
  `LastChangeDate`                   date DEFAULT NULL,
  `ValidityStartDate`                date DEFAULT NULL,
  `ValidityEndDate`                  date DEFAULT NULL,
  `ChangeNumber`                     varchar(12) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingMatlAssgmt`, `ProductionRtgMatlAssgmtIntVers`)
    CONSTRAINT `DataPlatformProductionRoutingProductPlantData_fk` FOREIGN KEY (`BusinessPartner`, `ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`) REFERENCES `sap_production_routing_header_data` (`BusinessPartner`, `ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
