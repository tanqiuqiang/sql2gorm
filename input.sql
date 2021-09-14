CREATE TABLE `USER`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary key',
    `ip_address` INT NOT NULL DEFAULT 0 COMMENT 'ip_address',
    `nickname` VARCHAR(128) NOT NULL DEFAULT '' COMMENT 'user note',
    `description` VARCHAR(256) NOT NULL DEFAULT '' COMMENT 'user description',
    `creator_email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT 'creator email',
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    `deleted_at` DATETIME NULL DEFAULT NULL COMMENT 'delete time',
    `pass_device_info` LONGTEXT NOT NULL COMMENT '设备信息',
    PRIMARY KEY(`id`),
    UNIQUE KEY `nicknamekey` (`nickname`),
    KEY `ip_addresskey` (`ip_address`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT = 'user table';