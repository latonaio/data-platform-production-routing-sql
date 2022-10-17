CREATE TABLE `data_platform_production_routing_operation_text_data`
(
  `ProductionRoutingGroup`           varchar(8) NOT NULL,
  `ProductionRouting`                varchar(2) NOT NULL,
  `ProductionRoutingSequence`        varchar(6) NOT NULL,
  `ProductionRoutingOpIntID`         varchar(8) NOT NULL,
  `ProductionRoutingOpIntVersion`    varchar(8) NOT NULL,
  `Operation`                        varchar(4) DEFAULT NULL,
  `CreationDate`                     varchar(80) DEFAULT NULL,
  `ChangeNumber`                     varchar(12) DEFAULT NULL,
  `ValidityStartDate`                varchar(80) DEFAULT NULL,
  `ValidityEndDate`                  varchar(80) DEFAULT NULL,
  `OperationText`                    varchar(40) DEFAULT NULL,
  `LongTextLanguageCode`             varchar(2) DEFAULT NULL,
  `Plant`                            varchar(4) DEFAULT NULL,
  `OperationControlProfile`          varchar(4) DEFAULT NULL,
  `OperationStandardTextCode`        varchar(7) DEFAULT NULL,
  `WorkCenterTypeCode`               varchar(2) DEFAULT NULL,
  `WorkCenterInternalID`             varchar(8) DEFAULT NULL,
  `CapacityCategoryCode`             varchar(3) DEFAULT NULL,
  `OperationCostingRelevancyType`    varchar(1) DEFAULT NULL,
  `NumberOfTimeTickets`              varchar(4) DEFAULT NULL,
  `NumberOfConfirmationSlips`        varchar(3) DEFAULT NULL,
  `OperationSetupType`               varchar(2) DEFAULT NULL,
  `OperationSetupGroupCategory`      varchar(10) DEFAULT NULL,
  `OperationSetupGroup`              varchar(10) DEFAULT NULL,
  `OperationReferenceQuantity`       varchar(15) DEFAULT NULL,
  `OperationUnit`                    varchar(3) DEFAULT NULL,
  `OpQtyToBaseQtyNmrtr`              varchar(6) DEFAULT NULL,
  `OpQtyToBaseQtyDnmntr`             varchar(6) DEFAULT NULL,
  `MaximumWaitDuration`              varchar(11) DEFAULT NULL,
  `MaximumWaitDurationUnit`          varchar(3) DEFAULT NULL,
  `MinimumWaitDuration`              varchar(11) DEFAULT NULL,
  `MinimumWaitDurationUnit`          varchar(3) DEFAULT NULL,
  `StandardQueueDuration`            varchar(11) DEFAULT NULL,
  `StandardQueueDurationUnit`        varchar(3) DEFAULT NULL,
  `MinimumQueueDuration`             varchar(11) DEFAULT NULL,
  `MinimumQueueDurationUnit`         varchar(3) DEFAULT NULL,
  `StandardMoveDuration`             varchar(11) DEFAULT NULL,
  `StandardMoveDurationUnit`         varchar(3) DEFAULT NULL,
  `MinimumMoveDuration`              varchar(11) DEFAULT NULL,
  `MinimumMoveDurationUnit`          varchar(3) DEFAULT NULL,
  `OpIsExtlyProcdWithSubcontrg`      tinyint(1) DEFAULT NULL,
  `PurchasingInfoRecord`             varchar(10) DEFAULT NULL,
  `PurchasingOrganization`           varchar(4) DEFAULT NULL,
  `PlannedDeliveryDuration`          varchar(4) DEFAULT NULL,
  `MaterialGroup`                    varchar(9) DEFAULT NULL,
  `PurchasingGroup`                  varchar(3) DEFAULT NULL,
  `Supplier`                         varchar(10) DEFAULT NULL,
  `NumberOfOperationPriceUnits`      varchar(6) DEFAULT NULL,
  `CostElement`                      varchar(10) DEFAULT NULL,
  `OpExternalProcessingPrice`        varchar(13) DEFAULT NULL,
  `OpExternalProcessingCurrency`     varchar(5) DEFAULT NULL,
  `OperationScrapPercent`            varchar(7) DEFAULT NULL,
  `ChangedDateTime`                  varchar(80) DEFAULT NULL,
  `PlainLongText`                    varchar(220) DEFAULT NULL,
    PRIMARY KEY (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingSequence`, `ProductionRoutingOpIntID`, `ProductionRoutingOpIntVersion`)
    CONSTRAINT `DataPlatformProductionRoutingOperationTextData_fk` FOREIGN KEY (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`) REFERENCES `sap_production_routing_header_data` (`ProductionRoutingGroup`, `ProductionRouting`, `ProductionRoutingInternalVers`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
