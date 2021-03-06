CREATE PROCEDURE `exists_user_card`(IN `in_telegram_id` BIGINT, IN `in_number` TEXT)
BEGIN
SELECT EXISTS (SELECT 1 FROM `user_card` WHERE 
`user_id` = (SELECT `id` FROM `user` WHERE `telegram_id` = `in_telegram_id`) AND
`card_id` = (SELECT `id` FROM `card` WHERE `number` = `in_number`));
END