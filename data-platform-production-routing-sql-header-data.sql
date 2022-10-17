CREATE TABLE `data_platform_production_routing_header_data`
(
    `BusinessPartner`               int(10) NOT NULL,  --新規追加
    `ProductionRoutingGroup`        varchar(8) NOT NULL,
    `ProductionRouting`             varchar(2) NOT NULL,
    `ProductionRoutingInternalVers` varchar(3) NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,
    `BillOfOperationsDesc`          varchar(40) DEFAULT NULL,
    `Plant`                         varchar(4) DEFAULT NULL,
    `BillOfOperationsUsage`         varchar(3) DEFAULT NULL,
    `BillOfOperationsStatus`        varchar(3) DEFAULT NULL,
    `ResponsiblePlannerGroup`       varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`        varchar(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`        varchar(15) DEFAULT NULL,
    `BillOfOperationsUnit`          varchar(3) DEFAULT NULL,
    `CreationDate`                  varchar(80) DEFAULT NULL,
    `LastChangeDate`                varchar(80) DEFAULT NULL,
    `ValidityStartDate`             varchar(80) DEFAULT NULL,
    `ValidityEndDate`               varchar(80) DEFAULT NULL,
    `ChangeNumber`                  varchar(12) DEFAULT NULL,
    `PlainLongText`                 varchar(200) DEFAULT NULL,
    `MaterialAssignment`            varchar(80) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`BusinessPartner`,`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
