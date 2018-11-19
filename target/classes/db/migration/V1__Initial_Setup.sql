 create table hibernate_sequence (next_val bigint) ENGINE = InnoDB DEFAULT CHARSET = utf8;
 insert into hibernate_sequence values (12);
 insert into hibernate_sequence values (12);

CREATE TABLE `product` (
  `id` BIGINT(20) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `price` DECIMAL(15,2) NULL DEFAULT 0,
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `order_` (
  `id` BIGINT(20) NOT NULL,
  `order_id` BIGINT(20) NOT NULL,
  `product_id` BIGINT(20) NOT NULL,
  `quantity` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET = utf8;