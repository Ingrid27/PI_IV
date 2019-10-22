/*
    user table

    INSERT INTO `user`(`id`, `id_owner`, `name`, `last_name`, `birth`, `email`, `altura`, `genre`, `type`, `date`) 
    VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10])
*/
CREATE TABLE `user`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_owner`INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `last_name`VARCHAR(255),
    `birth` DATE,
    `email` VARCHAR(255),
    `altura` DECIMAL,
    `genre` VARCHAR(255),
    `type` INT NOT NULL,
    `date` DATETIME
)ENGINE = MYISAM;

/*
    owner table

    INSERT INTO `owner`(`id`, `id_user`, `id_device`, `date`) VALUES ([value-1],[value-2],[value-3],[value-4])
*/
CREATE TABLE `owner`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_user` INT NOT NULL,
    `id_device` INT NOT NULL,
    `date` DATE
)ENGINE = MYISAM;

/*
    device table

    INSERT INTO `device`(`id`, `serial_number`, `date`) VALUES ([value-1],[value-2],[value-3])
*/
CREATE TABLE `device`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `serial_number` VARCHAR(255) NOT NULL UNIQUE,
    `date` DATE
)ENGINE = MYISAM;

/*
    shower table

    INSERT INTO `shower`(`id`, `id_device`, `id_user`, `start`, `end`, `power_consumed`, `water_consumed`, 
    `average_input_temperature`, `average_output_temperature`, `date`) VALUES ([value-1],[value-2],[value-3],
    [value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10])

*/
CREATE TABLE `shower`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_device`INT NOT NULL,
    `id_user`INT NOT NULL,
    `start`DATETIME NOT NULL,
    `end` DATETIME NOT NULL,
    `power_consumed` DECIMAL NOT NULL,
    `water_consumed`DECIMAL NOT NULL,
    `average_input_temperature` DECIMAL NOT NULL,
    `average_output_temperature` DECIMAL NOT NULL,
    `date`DATE NOT NULL
)ENGINE = MYISAM;
