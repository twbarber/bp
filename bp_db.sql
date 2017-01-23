CREATE TABLE `PlanItems` (
  `planId` <type>,
  `itemId` <type>,
  `duration` <type>,
  `quantity` <type>
);

CREATE TABLE `MembershipPlans` (
  `id` <type>,
  `price` <type>,
  `duration` <type>,
  `stripePlanId` <type>,
  `category` <type>,
  `isActive` <type>
);

CREATE TABLE `Subscription` (
  `subscriptionId` <type>,
  `planId` <type>,
  `userId` <type>,
  `stripeSubscriptionId` <type>,
  `isActive` <type>,
  `startDate` <type>,
  `endDate` <type>
);

CREATE TABLE `Users` (
  `id` <type>,
  `email` <type>,
  `firstName` <type>,
  `lastName` <type>,
  `username` <type>
);

CREATE TABLE `Purchase` (
  `id` <type>,
  `subscriptionId` <type>,
  `itemId` <type>,
  `date` <type>,
  `calculatedPrice` <type>,
  `tipAmount` <type>
);

CREATE TABLE `Promotions` (
  `id` <type>,
  `promoCode` <type>,
  `duration` <type>,
  `startDate` <type>,
  `endDate` <type>,
  `discountType` <type>,
  `discountRate` <type>
);

CREATE TABLE `UserPromotions` (
  `userId` <type>,
  `promotionId` <type>
);

CREATE TABLE `PromotionItems` (
  `promotionId` <type>,
  `itemId` <type>
);

CREATE TABLE `Items` (
  `id` <type>,
  `name` <type>,
  `cafe` <type>,
  `itemCategory` <type>
);

CREATE TABLE `AddOns` (
  `id` <type>,
  `itemId` <type>,
  `name` <type>,
  `category` <type>
);

CREATE TABLE `PurchaseAddOns` (
  `purchaseId` <type>,
  `addOnId` <type>
);

CREATE TABLE `AddOnPrice` (
  `id` <type>,
  `name` <type>,
  `marketPrice` <type>,
  `nonMemberPrice` <type>,
  `nonMemberCompensationPrice` <type>,
  `memberPrice` <type>,
  `memberCompensationPrice` <type>
);

CREATE TABLE `ItemPrices` (
  `itemId` <type>,
  `size` <type>,
  `marketPrice` <type>,
  `nonMemberPrice` <type>,
  `nonMemberCompensationPrice` <type>,
  `memberPrice` <type>,
  `memberCompensationPrice` <type>
);

CREATE TABLE `Location` (
  `id` <type>,
  `name` <type>,
  `address` <type>,
  `lat` <type>,
  `long` <type>,
  `city` <type>,
  `state` <type>,
  `isActive` <type>
);

