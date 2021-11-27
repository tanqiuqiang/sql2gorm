CREATE TABLE `USER`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary key',
    `ip_address` INT NOT NULL DEFAULT 0 COMMENT 'ip地址',
    `nickname` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '名称',
    `description` VARCHAR(256) NOT NULL DEFAULT '' COMMENT '描述',
    `creator_email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '创建人email',
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `deleted_at` DATETIME NULL DEFAULT NULL COMMENT '删除时间',
    `info` LONGTEXT NOT NULL COMMENT '信息',
    PRIMARY KEY(`id`),
    UNIQUE KEY `nicknamekey` (`nickname`),
    KEY `ip_addresskey` (`ip_address`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT = 'user table';