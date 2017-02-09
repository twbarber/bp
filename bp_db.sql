CREATE TABLE `UserSession` (
  `userId` VARBINARY(16) NOT NULL,
  `tokenId` VARBINARY(16) NOT NULL,
  `expires` DATETIME NULL
)

CREATE TABLE `PlanItems` (
  `planId` BIGINT(20) NOT NULL,
  `itemId` VARBINARY(16) NOT NULL,
  `duration` BIGINT(20) NOT NULL,
  `quantity` BIGINT(20) NOT NULL
);

CREATE TABLE `MembershipPlans` (
  `id` BIGINT(20) NOT NULL AUTO_INCRIMENT,
  `price` DECIMAL(8, 2) NOT NULL,
  `duration` BIGINT(20) NOT NULL,
  `stripePlanId` VARCHAR(255),
  `category` VARCHAR(255),
  `isActive` TINYINT(1)
);

CREATE TABLE `Subscription` (
  `subscriptionId` VARBINARY(16) NOT NULL,
  `planId` BIGINT(20) NOT NULL,
  `userId` VARBINARY(16) NOT NULL,
  `stripeSubscriptionId` varchar(255) NOT NULL,
  `isActive` TINYINT(1),
  `startDate` DATETIME NULL,
  `endDate` DATETIME NULL
);

CREATE TABLE `Users` (
  `id` VARBINARY(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `firstName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `username` VARCHAR(255) NOT NULL
);

CREATE TABLE `Purchase` (
  `id` VARBINARY(16) NOT NULL,
  `subscriptionId` IN,
  `date` DATETIME NULL,
  `tipAmount` DECIMAL(6,2)
);

CREATE TABLE `PurchaseItems` (
  `purchaseId` varchar(255) NOT NULL,
  `itemId` VARBINARY(16) NOT NULL,
  `calculatedPrice` DECIMAL(6,2),
  `coverdBySubscription` TINYINT(1)
);

CREATE TABLE `Promotions` (
  `id` bigint(20) NOT NULL AUTO_INCRIMENT,
  `promoCode` varchar(255) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `startDate` DATETIME NULL,
  `endDate` DATETIME NULL,
  `discountType` varchar(255) NOT NULL,
  `discountRate` DECIMAL(8,2)
);

CREATE TABLE `UserPromotions` (
  `userId` VARBINARY(16) NOT NULL,
  `promotionId` bigint(20) NOT NULL
);

CREATE TABLE `PromotionItems` (
  `promotionId` bigint(20) NOT NULL,
  `itemId` VARBINARY(16) NOT NULL
);

CREATE TABLE `Items` (
  `id` VARBINARY(16) NOT NULL,
  `name` VARCHAR(255),
  `location` VARBINARY(16) NOT NULL,
);

CREATE TABLE `ItemCategory` (
  `itemId` VARBINARY(16) NOT NULL,
  `category` VARCHAR(255),
)

CREATE TABLE `AddOns` (
  `id` VARBINARY(16) NOT NULL,
  `itemId` VARBINARY(16) NOT NULL,
  `name` VARCHAR(255),
  `category` VARCHAR(255)
);

CREATE TABLE `PurchaseItemAddOns` (
  `purchaseItemId` VARBINARY(16) NOT NULL,
  `addOnId`  VARBINARY(16) NOT NULL
);

CREATE TABLE `AddOnPrice` (
  `id` VARBINARY(16) NOT NULL,
  `name`VARCHAR(255) NOT NULL,
  `marketPrice` DECIMAL(8,2),
  `nonMemberPrice` DECIMAL(8,2),
  `nonMemberCompensationPrice` DECIMAL(8,2),
  `memberPrice` DECIMAL(8,2),
  `memberCompensationPrice` DECIMAL(8,2)
);

CREATE TABLE `ItemPrices` (
  `itemId` VARBINARY(16) NOT NULL,
  `size` VARCHAR(255) NOT NULL,
  `marketPrice` DECIMAL(6,2),
  `nonMemberPrice` DECIMAL(6,2)
  `nonMemberCompensationPrice` DECIMAL(6,2),
  `memberPrice` DECIMAL(6,2),
  `memberCompensationPrice` DECIMAL(6,2)
);

CREATE TABLE `Location` (
  `id` VARBINARY(16) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `lat` DECIMAL(10, 8) NOT NULL,
  `long` DECIMAL(11, 8) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `isActive` TINYINT(1)

