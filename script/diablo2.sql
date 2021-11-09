/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : diablo2

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 09/11/2021 10:17:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint NULL DEFAULT NULL COMMENT '0数值，1百分比，2次数，3非线性百分比，4系数，5特殊',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `desc`(`desc`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (10, '13级暗影斗篷', 2);
INSERT INTO `attribute` VALUES (51, '13级棘灵', 2);
INSERT INTO `attribute` VALUES (56, '16级熔岩巨石', 2);
INSERT INTO `attribute` VALUES (57, '16级黏土魔像', 2);
INSERT INTO `attribute` VALUES (23, '17级吸引', 2);
INSERT INTO `attribute` VALUES (34, '6级削弱', 2);
INSERT INTO `attribute` VALUES (88, '亚马逊技能等级', 0);
INSERT INTO `attribute` VALUES (52, '传送术', 0);
INSERT INTO `attribute` VALUES (5, '伤害降低', 0);
INSERT INTO `attribute` VALUES (44, '伤害降低', 1);
INSERT INTO `attribute` VALUES (58, '冰霜伤害', 0);
INSERT INTO `attribute` VALUES (62, '冰霜抗性', 1);
INSERT INTO `attribute` VALUES (48, '冰霜抗性上限', 1);
INSERT INTO `attribute` VALUES (55, '冻结时间减半', 5);
INSERT INTO `attribute` VALUES (42, '击中时偷取生命', 1);
INSERT INTO `attribute` VALUES (97, '刺客技能等级', 0);
INSERT INTO `attribute` VALUES (11, '力量', 0);
INSERT INTO `attribute` VALUES (53, '力量', 4);
INSERT INTO `attribute` VALUES (15, '受到的伤害转换为法力', 1);
INSERT INTO `attribute` VALUES (71, '命中使怪物逃跑', 3);
INSERT INTO `attribute` VALUES (70, '命中值', 0);
INSERT INTO `attribute` VALUES (90, '圣骑士技能等级', 0);
INSERT INTO `attribute` VALUES (63, '在4秒内修复1点耐久度', 5);
INSERT INTO `attribute` VALUES (76, '在击中时施放10级骨矛', 3);
INSERT INTO `attribute` VALUES (65, '在击中时施放15级多头蛇', 3);
INSERT INTO `attribute` VALUES (87, '在击中时施放15级女武神', 3);
INSERT INTO `attribute` VALUES (93, '在击中时施放15级小旋风', 3);
INSERT INTO `attribute` VALUES (96, '在击中时施放15级涂毒', 3);
INSERT INTO `attribute` VALUES (79, '在击中时施放15级火球术', 3);
INSERT INTO `attribute` VALUES (21, '在击中时施放18级迷乱', 3);
INSERT INTO `attribute` VALUES (83, '在击中时施放1级嘲讽', 3);
INSERT INTO `attribute` VALUES (89, '在击中时施放5级圣光弹', 3);
INSERT INTO `attribute` VALUES (75, '在被击中时施放10级骨甲', 3);
INSERT INTO `attribute` VALUES (20, '在被击中时施放13级恐惧', 3);
INSERT INTO `attribute` VALUES (19, '在被击中时施放14级心灵爆震', 3);
INSERT INTO `attribute` VALUES (74, '在被击中时施放15级冰棱甲', 3);
INSERT INTO `attribute` VALUES (92, '在被击中时施放15级气旋护甲', 3);
INSERT INTO `attribute` VALUES (95, '在被击中时施放15级消隐', 3);
INSERT INTO `attribute` VALUES (78, '在被击中时施放15级足跟火', 3);
INSERT INTO `attribute` VALUES (24, '在被击中时施放15级迷乱', 3);
INSERT INTO `attribute` VALUES (64, '在被击中时施放18级涂毒', 3);
INSERT INTO `attribute` VALUES (82, '在被击中时施放1级狂嗥', 3);
INSERT INTO `attribute` VALUES (54, '在被击中时施放3级微暗灵视', 3);
INSERT INTO `attribute` VALUES (18, '在被击中时施放50级精神错乱', 3);
INSERT INTO `attribute` VALUES (86, '在被击中时施放5级飞矢减速', 3);
INSERT INTO `attribute` VALUES (41, '对亡灵的伤害', 1);
INSERT INTO `attribute` VALUES (40, '对恶魔的伤害', 1);
INSERT INTO `attribute` VALUES (80, '巫师技能等级', 0);
INSERT INTO `attribute` VALUES (31, '强化伤害', 1);
INSERT INTO `attribute` VALUES (7, '强化防御', 1);
INSERT INTO `attribute` VALUES (94, '德鲁伊技能等级', 0);
INSERT INTO `attribute` VALUES (12, '怪物额外掉落金币', 1);
INSERT INTO `attribute` VALUES (67, '所有属性', 0);
INSERT INTO `attribute` VALUES (1, '所有技能等级', 0);
INSERT INTO `attribute` VALUES (30, '所有抗性', 1);
INSERT INTO `attribute` VALUES (98, '提高攻击速度', 1);
INSERT INTO `attribute` VALUES (85, '攻击者受到伤害', 0);
INSERT INTO `attribute` VALUES (33, '敏捷', 0);
INSERT INTO `attribute` VALUES (81, '暖身术', 0);
INSERT INTO `attribute` VALUES (26, '更快速打击回复', 1);
INSERT INTO `attribute` VALUES (39, '更快速施法', 1);
INSERT INTO `attribute` VALUES (38, '更快速跑步/步行', 1);
INSERT INTO `attribute` VALUES (35, '最大耐力', 0);
INSERT INTO `attribute` VALUES (69, '最小伤害', 0);
INSERT INTO `attribute` VALUES (77, '死灵法师技能等级', 0);
INSERT INTO `attribute` VALUES (3, '每次消灭恢复法力', 0);
INSERT INTO `attribute` VALUES (50, '每次消灭恢复生命', 0);
INSERT INTO `attribute` VALUES (46, '毒素技能伤害', 1);
INSERT INTO `attribute` VALUES (36, '毒素抗性', 1);
INSERT INTO `attribute` VALUES (91, '毒素抗性上限', 1);
INSERT INTO `attribute` VALUES (17, '法力', 0);
INSERT INTO `attribute` VALUES (29, '法力', 4);
INSERT INTO `attribute` VALUES (37, '法力回复', 1);
INSERT INTO `attribute` VALUES (47, '法力最大值', 1);
INSERT INTO `attribute` VALUES (14, '活力', 0);
INSERT INTO `attribute` VALUES (49, '火焰抗性', 1);
INSERT INTO `attribute` VALUES (6, '照亮范围', 0);
INSERT INTO `attribute` VALUES (28, '生命', 0);
INSERT INTO `attribute` VALUES (73, '生命', 4);
INSERT INTO `attribute` VALUES (27, '生命最大值', 1);
INSERT INTO `attribute` VALUES (59, '粉碎打击', 1);
INSERT INTO `attribute` VALUES (2, '能量', 0);
INSERT INTO `attribute` VALUES (72, '致死打击', 1);
INSERT INTO `attribute` VALUES (43, '补充生命', 7);
INSERT INTO `attribute` VALUES (66, '装备时获得神圣之火光环等级', 0);
INSERT INTO `attribute` VALUES (25, '装备时获得神圣之雷光环等级', 0);
INSERT INTO `attribute` VALUES (45, '装备时获得荆棘光环等级', 0);
INSERT INTO `attribute` VALUES (9, '远程防御', 0);
INSERT INTO `attribute` VALUES (60, '造成开创性伤口', 1);
INSERT INTO `attribute` VALUES (84, '野蛮人技能等级', 0);
INSERT INTO `attribute` VALUES (4, '闪电抗性', 1);
INSERT INTO `attribute` VALUES (68, '闪电抗性上限', 1);
INSERT INTO `attribute` VALUES (8, '防御', 0);
INSERT INTO `attribute` VALUES (61, '降低耐力消耗', 3);
INSERT INTO `attribute` VALUES (32, '需求', 1);
INSERT INTO `attribute` VALUES (22, '额外几率获得魔法物品', 1);
INSERT INTO `attribute` VALUES (16, '魔法伤害降低', 0);

-- ----------------------------
-- Table structure for rune
-- ----------------------------
DROP TABLE IF EXISTS `rune`;
CREATE TABLE `rune`  (
  `id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `weapon_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `armor_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rune
-- ----------------------------
INSERT INTO `rune` VALUES (1, 'El', NULL, NULL);
INSERT INTO `rune` VALUES (2, 'Eld', NULL, NULL);
INSERT INTO `rune` VALUES (3, 'Tir', NULL, NULL);
INSERT INTO `rune` VALUES (4, 'Nef', NULL, NULL);
INSERT INTO `rune` VALUES (5, 'Eth', NULL, NULL);
INSERT INTO `rune` VALUES (6, 'Ith', NULL, NULL);
INSERT INTO `rune` VALUES (7, 'Tal', NULL, NULL);
INSERT INTO `rune` VALUES (8, 'Ral', NULL, NULL);
INSERT INTO `rune` VALUES (9, 'Ort', NULL, NULL);
INSERT INTO `rune` VALUES (10, 'Thul', NULL, NULL);
INSERT INTO `rune` VALUES (11, 'Amn', NULL, NULL);
INSERT INTO `rune` VALUES (12, 'Sol', NULL, NULL);
INSERT INTO `rune` VALUES (13, 'Shael', NULL, NULL);
INSERT INTO `rune` VALUES (14, 'Dol', NULL, NULL);
INSERT INTO `rune` VALUES (15, 'Hel', NULL, NULL);
INSERT INTO `rune` VALUES (16, 'Io', NULL, NULL);
INSERT INTO `rune` VALUES (17, 'Lum', NULL, NULL);
INSERT INTO `rune` VALUES (18, 'Ko', NULL, NULL);
INSERT INTO `rune` VALUES (19, 'Fal', NULL, NULL);
INSERT INTO `rune` VALUES (20, 'Lem', NULL, NULL);
INSERT INTO `rune` VALUES (21, 'Pul', NULL, NULL);
INSERT INTO `rune` VALUES (22, 'Um', NULL, NULL);
INSERT INTO `rune` VALUES (23, 'Mal', NULL, NULL);
INSERT INTO `rune` VALUES (24, 'Ist', NULL, NULL);
INSERT INTO `rune` VALUES (25, 'Gul', NULL, NULL);
INSERT INTO `rune` VALUES (26, 'Vex', NULL, NULL);
INSERT INTO `rune` VALUES (27, 'Ohm', NULL, NULL);
INSERT INTO `rune` VALUES (28, 'Lo', NULL, NULL);
INSERT INTO `rune` VALUES (29, 'Sur', NULL, NULL);
INSERT INTO `rune` VALUES (30, 'Ber', NULL, NULL);
INSERT INTO `rune` VALUES (31, 'Jah', NULL, NULL);
INSERT INTO `rune` VALUES (32, 'Cham', NULL, NULL);
INSERT INTO `rune` VALUES (33, 'Zod', NULL, NULL);

-- ----------------------------
-- Table structure for rune_word
-- ----------------------------
DROP TABLE IF EXISTS `rune_word`;
CREATE TABLE `rune_word`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rune_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hole_number` int NULL DEFAULT NULL,
  `equipment_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rune_word
-- ----------------------------
INSERT INTO `rune_word` VALUES (2, '9,12', '学识', 2, '0');
INSERT INTO `rune_word` VALUES (3, '4,3', '天底', 2, '0');
INSERT INTO `rune_word` VALUES (4, '4,12,6', '光辉', 3, '0');
INSERT INTO `rune_word` VALUES (5, '20,24,16', '迷狂', 3, '0');
INSERT INTO `rune_word` VALUES (6, '16,31,21', '梦境', 3, '0,2');
INSERT INTO `rune_word` VALUES (7, '15,17,19', '狮心', 3, '1');

-- ----------------------------
-- Table structure for rune_word_attributes
-- ----------------------------
DROP TABLE IF EXISTS `rune_word_attributes`;
CREATE TABLE `rune_word_attributes`  (
  `rune_word_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `value` decimal(10, 3) NULL DEFAULT NULL,
  `min_value` decimal(10, 3) NULL DEFAULT NULL,
  `max_value` decimal(10, 3) NULL DEFAULT NULL,
  `equipment_type` int NULL DEFAULT NULL,
  PRIMARY KEY (`rune_word_id`, `attribute_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rune_word_attributes
-- ----------------------------
INSERT INTO `rune_word_attributes` VALUES (2, 1, 1.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (2, 2, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (2, 3, 2.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (2, 4, 30.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (2, 5, 7.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (2, 6, 2.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 3, 2.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 6, 3.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 7, 50.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 8, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 9, 30.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 10, 9.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 11, 5.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (3, 12, 33.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 2, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 5, 7.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 6, 5.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 7, 75.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 9, 30.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 14, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 15, 15.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 16, 3.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (4, 17, 33.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 1, 2.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 8, 261.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 12, 50.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 14, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 18, 1.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 19, 6.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 20, 14.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 21, 11.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 22, 25.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (5, 23, 60.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 7, 30.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 8, NULL, 150.000, 220.000, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 14, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 22, NULL, 12.000, 25.000, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 24, 10.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 25, 15.000, NULL, NULL, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 26, NULL, 20.000, 30.000, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 27, 5.000, NULL, NULL, 0);
INSERT INTO `rune_word_attributes` VALUES (6, 28, 50.000, NULL, NULL, 2);
INSERT INTO `rune_word_attributes` VALUES (6, 29, 0.625, 0.625, 61.875, NULL);
INSERT INTO `rune_word_attributes` VALUES (6, 30, NULL, 5.000, 20.000, NULL);

SET FOREIGN_KEY_CHECKS = 1;
