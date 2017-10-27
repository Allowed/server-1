DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20171019171026');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20171019171026');
-- Add your query below.

-- Replace the incorrect text of the SAY_OOX_AGGRO2 npc_oox17tn of the quest Rescue OOX-17/TN!
UPDATE script_texts SET content_default='Threat analyzed! Activating combat plan beta! CLUCK!' WHERE entry="-1000289";

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
