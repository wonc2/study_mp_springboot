DROP TABLE IF EXISTS `attend`;

CREATE TABLE `attend`
(
    `attend_id` INT AUTO_INCREMENT NOT NULL,
    `emp_id`    VARCHAR(20) NOT NULL,
    `workdate`  VARCHAR(20) NOT NULL,
    `status`    VARCHAR(20) NULL,
    PRIMARY KEY (`attend_id`)
);

DROP TABLE IF EXISTS `auths`;

CREATE TABLE `auths`
(
    `auths_id`     VARCHAR(20) NOT NULL,
    `auth_name_id` VARCHAR(20) NOT NULL,
    `emp_id`       VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS `auth_names`;

CREATE TABLE `auth_names`
(
    `auth_name_id` VARCHAR(20) NOT NULL,
    `auth_name`    VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee`
(
    `emp_id`    VARCHAR(20)        NOT NULL,
    `dep_id`    VARCHAR(20)        NOT NULL,
    `emp_name`  VARCHAR(20)        NOT NULL,
    `emp_pw`    VARCHAR(20)        NOT NULL,
    `emp_email` VARCHAR(20) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department`
(
    `dep_id`   VARCHAR(20) NOT NULL,
    `dep_name` VARCHAR(20) NOT NULL
);


ALTER TABLE `auths`
    ADD CONSTRAINT `PK_AUTHS` PRIMARY KEY (
                                           `auths_id`
        );

ALTER TABLE `auth_names`
    ADD CONSTRAINT `PK_AUTH_NAMES` PRIMARY KEY (
                                                `auth_name_id`
        );

ALTER TABLE `department`
    ADD CONSTRAINT `PK_DEPARTMENT` PRIMARY KEY (
                                                `dep_id`
        );

ALTER TABLE `employee`
    ADD CONSTRAINT `PK_EMPLOYEE` PRIMARY KEY (
                                              `emp_id`
        );

ALTER TABLE `attend`
    ADD CONSTRAINT `FK_employee_TO_attend_1` FOREIGN KEY (
                                                          `emp_id`
        )
        REFERENCES `employee` (
                               `emp_id`
            );

ALTER TABLE `auths`
    ADD CONSTRAINT `FK_auth_names_TO_auths_1` FOREIGN KEY (
                                                           `auth_name_id`
        )
        REFERENCES `auth_names` (
                                 `auth_name_id`
            );

ALTER TABLE `auths`
    ADD CONSTRAINT `FK_employee_TO_auths_1` FOREIGN KEY (
                                                         `emp_id`
        )
        REFERENCES `employee` (
                               `emp_id`
            );

ALTER TABLE `employee`
    ADD CONSTRAINT `FK_department_TO_employee_1` FOREIGN KEY (
                                                              `dep_id`
        )
        REFERENCES `department` (
                                 `dep_id`
            );

