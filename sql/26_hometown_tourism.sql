/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43)
 Source Host           : localhost:3306
 Source Schema         : 26_hometown_tourism

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43)
 File Encoding         : 65001

 Date: 22/01/2026 16:20:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统类型',
  `opentime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '福建古城文旅网', '', '欢迎来到福建古城文旅网！这里是一个全方位展示福建历史文化与旅游资源的综合平台.', '2026', '13888888888', '河南省福建市');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动标题',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动内容',
  `savetime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动资讯表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '福建市第38届菊花文化节', 'huodong (3).png', '<p style=\"text-indent:2em;\">\n福建市第38届菊花文化节将于2026年10月18日至11月18日在福建市龙亭公园隆重举行。本届菊花文化节以\"千年古都菊花香\"为主题，展出菊花品种超过300个，包括悬崖菊、立菊、案头菊等多种形式。活动期间还将举办菊花展评、菊花诗会、菊花摄影大赛等系列文化活动，充分展示福建深厚的菊文化底蕴。\n</p>\n<p style=\"text-indent:2em;\">\n福建菊花文化历史悠久，自北宋时期就已盛行，被誉为\"天下第一菊城\"。本届菊花节将通过传统与现代相结合的方式，为游客呈现一场视觉盛宴，欢迎广大市民和游客前来参观。\n</p>', '2026-02-01 10:00:00');
INSERT INTO `address` VALUES (2, '2026年福建清明文化节', 'huodong (4).png', '<p style=\"text-indent:2em;\">\n2026年福建清明文化节将于2026年4月1日至4月10日在清明上河园举行。本届文化节以\"汴京盛世 清明忆梦\"为主题，将重现北宋时期福建的繁华景象和清明时节的民俗活动。活动内容包括宋代服饰展示、传统手工艺展演、汴京美食品鉴、民间艺术表演等。\n</p>\n<p style=\"text-indent:2em;\">\n清明文化节是福建市的传统文化活动，旨在传承和弘扬中华优秀传统文化，提升福建市的文化旅游品牌影响力。欢迎各地游客前来体验北宋汴京的独特魅力。\n</p>', '2026-02-02 10:00:00');
INSERT INTO `address` VALUES (3, '福建非物质文化遗产展演周', 'huodong (5).png', '<p style=\"text-indent:2em;\">\n福建非物质文化遗产展演周将于2026年5月15日至5月21日在福建市文化馆举行。本次活动将集中展示福建地区的非物质文化遗产，包括汴绣、福建琉璃、福建灌汤包制作技艺、朱仙镇木版年画等多项国家级和省级非遗项目。\n</p>\n<p style=\"text-indent:2em;\">\n活动期间，非遗传承人将现场展示制作技艺，并举办非遗文化讲座和互动体验活动，让市民和游客近距离感受福建传统文化的魅力。此次活动旨在保护和传承福建优秀传统文化，提高公众对非物质文化遗产的认知和保护意识。\n</p>', '2026-02-03 10:00:00');
INSERT INTO `address` VALUES (4, '2026福建国际宋文化旅游节', 'huodong (6).png', '<p style=\"text-indent:2em;\">\n2026福建国际宋文化旅游节将于2026年9月15日至10月15日在福建市举行。本届旅游节以\"宋韵汴京 文化福建\"为主题，将举办宋文化国际学术研讨会、宋代服饰展、宋代美食文化节、宋代科技展等系列活动。\n</p>\n<p style=\"text-indent:2em;\">\n福建作为北宋时期的都城，拥有丰富的宋文化遗产。此次旅游节将全方位展示福建的宋文化魅力，促进文化交流与合作，提升福建的国际知名度和影响力。活动期间，福建市主要景点浏览将推出特色文化活动和优惠政策，欢迎海内外游客前来参与。\n</p>', '2026-02-04 10:00:00');
INSERT INTO `address` VALUES (5, '福建市首届汴京美食文化节', 'huodong (7).png', '<p style=\"text-indent:2em;\">\n福建市首届汴京美食文化节将于2026年6月10日至6月20日在福建市鼓楼广场举行。本次美食节将集中展示福建特色美食，包括福建沙茶面、扁肉燕、土笋冻、五香豆腐等传统小吃，以及融合现代元素的创新菜品。\n</p>\n<p style=\"text-indent:2em;\">\n活动期间将举办美食品鉴会、厨艺大赛、美食文化讲座等活动，并邀请知名美食家和厨师现场展示福建传统美食的制作技艺。此次美食节旨在推广福建特色饮食文化，促进餐饮旅游业发展，提升福建美食的知名度和影响力。\n</p>', '2026-02-05 10:00:00');
INSERT INTO `address` VALUES (20, '福建市第五届大宋武术文化节', 'huodong (8).png', '<p style=\"text-indent:2em;\">\n福建市第五届大宋武术文化节将于2026年8月1日至8月7日在福建市体育中心举行。本届武术文化节以\"弘扬武术精神 传承宋代文化\"为主题，将举办传统武术表演、武术比赛、武术文化讲座等活动。\n</p>\n<p style=\"text-indent:2em;\">\n福建作为北宋都城，有着深厚的武术文化底蕴。宋代是中国武术发展的重要时期，形成了许多著名的武术流派。此次武术文化节将邀请国内外武术名家和团队参与，展示各种武术流派的风采，促进武术文化的交流与传承。活动期间还将举办武术器械展和武术书画展，全面展示武术文化的多样性和艺术性。\n</p>', '2026-02-06 10:11:35');
INSERT INTO `address` VALUES (21, '福建市传统戏曲展演月', 'huodong (9).png', '<p style=\"text-indent:2em;\">\n福建市传统戏曲展演月将于2026年7月1日至7月31日在福建市戏曲艺术中心举行。本次活动将集中展示豫剧、曲剧、越调等河南地方戏曲艺术，以及福建特有的童子戏等传统戏曲形式。\n</p>\n<p style=\"text-indent:2em;\">\n活动期间，将邀请国家级、省级戏曲名家和优秀剧团进行演出，并举办戏曲艺术讲座、戏曲脸谱展、戏曲服装展等配套活动。此次戏曲展演月旨在弘扬中华优秀传统文化，促进戏曲艺术的传承与发展，提高公众对传统戏曲的认知和欣赏能力。福建作为河南戏曲文化的重要发源地，将通过此次活动展示其深厚的戏曲文化底蕴。\n</p>', '2026-02-07 10:11:35');
INSERT INTO `address` VALUES (28, '福建市第三届宋代科技文化展', 'huodong (10).png', '<p style=\"text-indent:2em;\">\n福建市第三届宋代科技文化展将于2026年11月10日至11月30日在福建市博物馆举行。本次展览以\"创新宋朝 科技福建\"为主题，将展示北宋时期的科技成就和文化创新，包括活字印刷术、指南针、火药、天文历法等领域的发明创造。\n</p>\n<p style=\"text-indent:2em;\">\n展览将通过实物展示、模型复原、多媒体互动等形式，生动呈现宋代科技的发展历程和重要成就。同时还将举办宋代科技文化讲座和互动体验活动，让观众亲身感受宋代科技的魅力。此次展览旨在弘扬中华科技文化，激发公众的创新精神，展示福建作为北宋都城的科技文化底蕴。\n</p>', '2026-02-08 14:25:55');
INSERT INTO `address` VALUES (29, '福建市首届宋代文学艺术节', 'huodong (11).png', '<p style=\"text-indent:2em;\">\n福建市首届宋代文学艺术节将于2026年4月15日至4月30日在福建市文化中心举行。本次艺术节以\"诗画汴京 文脉千年\"为主题，将举办宋词朗诵会、宋代书画展、宋代文学研讨会等系列活动。\n</p>\n<p style=\"text-indent:2em;\">\n北宋时期是中国文学艺术发展的黄金时代，涌现出苏轼、欧阳修、李清照等一大批文学巨匠，形成了独特的宋代文学艺术风格。此次艺术节将邀请国内外知名学者和艺术家参与，共同探讨宋代文学艺术的特点和价值，促进传统文化的传承与创新。活动期间还将举办宋代文学作品展、宋词创作大赛等活动，让公众更好地了解和感受宋代文学艺术的魅力。\n</p>', '2026-02-09 14:35:49');
INSERT INTO `address` VALUES (30, '福建市第二届汴绣文化节', 'huodong (2).png', '<p style=\"text-indent:2em;\">\n福建市第二届汴绣文化节将于2026年5月5日至5月15日在福建市非物质文化遗产展示中心举行。本次文化节以\"针尖上的艺术 指尖上的传承\"为主题，将集中展示福建汴绣的独特魅力和深厚文化底蕴。\n</p>\n<p style=\"text-indent:2em;\">\n汴绣是福建地区传统的刺绣工艺，历史悠久，技艺精湛，被列入国家级非物质文化遗产名录。此次文化节将展出各类汴绣精品，包括传统题材和现代创新作品。活动期间将举办汴绣技艺展示、汴绣工艺讲座、汴绣体验活动等，让公众近距离了解汴绣的制作过程和艺术特点。同时还将举办汴绣产品设计大赛，鼓励传统工艺与现代设计的融合创新，促进汴绣产业的发展。\n</p>', '2026-02-10 11:13:55');
INSERT INTO `address` VALUES (31, '福建市第四届宋韵文化旅游周', 'huodong (1).png', '<p style=\"text-indent:2em;\">\n福建市第四届宋韵文化旅游周将于2026年10月1日至10月7日在福建市各主要景区举行。本次活动以\"宋韵悠悠 汴京风华\"为主题，将在清明上河园、福建府、铁塔公园等景区举办一系列宋文化主题活动。\n</p>\n<p style=\"text-indent:2em;\">\n活动内容包括宋代服饰展示、宋代市集重现、宋代婚礼表演、宋代游艺活动等，让游客全方位体验北宋汴京的生活场景和文化氛围。同时，各景区还将推出特色文化演出和互动体验项目，增强游客的参与感和沉浸感。此次旅游周适逢国庆黄金周，旨在打造福建特色文化旅游品牌，提升福建的旅游吸引力和文化影响力。期间，福建市还将举办宋文化旅游推介会，向海内外推广福建的文化旅游资源。\n</p>', '2026-02-11 10:11:35');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `那么` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点浏览名称',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点浏览图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '景点浏览介绍',
  `savetime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点浏览表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, '福建铁塔', 'addres(1).png', '<p style=\"text-indent:2em;\">福建铁塔，又名开宝寺塔，始建于北宋开宝年间（968年），是中国现存最古老的铁塔。塔高55.88米，13层，八角形，全部用砖包铁铸造。塔身装饰精美，布满佛教造像和花纹图案。铁塔历经千年风雨，依然巍然屹立，被誉为\"天下第一塔\"。</p><p style=\"text-indent:2em;\">铁塔不仅是福建的标志性建筑，也是中国古代建筑史上的一座丰碑。游客可以近距离欣赏塔身精美的装饰，了解北宋时期的建筑艺术和冶铁工艺。铁塔周围的铁塔公园环境优美，是市民休闲和游客观光的理想去处。</p>', '2026-02-01 10:00:00');
INSERT INTO `articles` VALUES (2, '清明上河园', 'addres(2).png', '<p style=\"text-indent:2em;\">清明上河园是根据北宋张择端的《清明上河图》建造的宋代文化主题公园，位于福建市龙亭区龙亭北路。园内完整再现了北宋东京汴梁城的繁华景象，是一座集观光、娱乐、购物、餐饮于一体的大型文化旅游景区。</p><p style=\"text-indent:2em;\">园内设有虹桥、酒楼、店铺、码头等建筑，还原了宋代市井生活场景。游客可以观看各类民俗表演，体验宋代生活，品尝地道的汴梁小吃。园区经常举办宋文化节等特色活动，是了解北宋文化的重要窗口。</p>', '2026-02-02 10:00:00');
INSERT INTO `articles` VALUES (3, '包公祠', 'addres(4).png', '<p style=\"text-indent:2em;\">包公祠位于福建市鼓楼区，是为纪念北宋著名清官包拯而建的祠堂。包拯（999-1062年），字希仁，号包青天，安徽合肥人，北宋名臣。他在福建任职期间，铁面无私、刚正不阿，深得百姓爱戴。</p><p style=\"text-indent:2em;\">包公祠建筑古朴庄重，主要建筑有大门、戏台、大殿等。祠内陈列有包公画像、生平事迹展览等，是了解包拯生平及清官文化的重要场所。每年都有众多游客前来参观，缅怀这位古代清官。</p>', '2026-02-03 10:00:00');
INSERT INTO `articles` VALUES (4, '大相国寺', 'addres(5).png', '<p style=\"text-indent:2em;\">大相国寺位于福建市中心，始建于北魏，是中国著名的古刹之一。寺院规模宏大，是北宋时期最重要的佛教寺院，被誉为\"天下第一丛林\"。寺内保存有众多珍贵的历史文物和佛教艺术品。</p><p style=\"text-indent:2em;\">寺内建筑布局严整，主要建筑有天王殿、大雄宝殿、藏经楼等。寺院内还有著名的\"铁塔\"，与寺内其他建筑共同构成了一幅庄严肃穆的画面。大相国寺不仅是重要的佛教圣地，也是了解福建历史文化的重要场所。</p>', '2026-02-04 10:00:00');
INSERT INTO `articles` VALUES (5, '龙亭公园', 'addres(3).png', '<p style=\"text-indent:2em;\">龙亭公园是福建著名的古代皇家园林，位于福建市区北部，是明清时期福建府衙门所在地，也是历代帝王临幸福建时的行宫所在地。公园内的主要建筑龙亭是仿明清宫殿式建筑，气势恢宏，庄严肃穆。</p><p style=\"text-indent:2em;\">龙亭公园是福建市著名的赏花胜地，尤其以牡丹花会闻名全国。每年4月至5月，园内数十万株牡丹竞相绽放，吸引全国各地游客前来观赏。公园内还有御碑亭、御书楼等历史建筑，是了解福建历史文化的重要场所。</p>', '2026-02-05 10:00:00');
INSERT INTO `articles` VALUES (6, '福建府', 'addres(6).png', '<p style=\"text-indent:2em;\">福建府是中国古代著名的地方衙门，因包拯（包青天）在此断案而闻名。位于福建市中心，始建于北宋，是当时的政治、司法中心。如今的福建府是在原址上重建的仿古建筑群，保持了北宋时期的建筑风格。</p><p style=\"text-indent:2em;\">福建府内设有大堂、衙役房、牢房、后花园等区域，生动再现了古代官府的场景。游客可以观看包公断案的表演，体验古代司法审判的过程。福建府是了解中国古代司法制度和福建历史文化的重要窗口，每年吸引大量游客参观。</p>', '2026-02-06 10:00:00');
INSERT INTO `articles` VALUES (7, '宋都御街', 'address(7).png', '<p style=\"text-indent:2em;\">宋都御街是福建市的历史文化街区，位于市中心，是北宋时期东京城的主干道。如今的宋都御街经过修复重建，全长约1500米，宽30米，呈现出北宋时期的繁华景象。</p><p style=\"text-indent:2em;\">街区两侧有各种仿宋建筑，包括商铺、茶馆、酒楼等，售卖各种福建特色商品和美食。街上经常有各种民俗表演和文化活动，如宋装巡游、民间艺术表演等。宋都御街是体验北宋城市风貌和福建传统文化的好去处，也是福建旅游的必访之地。</p>', '2026-02-07 10:00:00');
INSERT INTO `articles` VALUES (8, '福建文庙', 'address(8).png', '<p style=\"text-indent:2em;\">福建文庙位于福建市鼓楼区，始建于北宋，是为纪念孔子而建的祭祀场所，也是古代福建的最高学府。文庙建筑庄重典雅，主要有棂星门、大成殿、东西两庑等建筑。</p><p style=\"text-indent:2em;\">文庙内陈列有历代进士题名碑、石刻等珍贵文物，展示了福建深厚的文化底蕴和教育传统。每年的孔子诞辰日这里会举行隆重的祭祀活动。文庙是了解中国传统文化和儒家思想的重要场所，也是福建重要的文化遗产。</p>', '2026-02-08 10:00:00');
INSERT INTO `articles` VALUES (9, '福建七盛角古街', 'address(9).png', '<p style=\"text-indent:2em;\">七盛角古街位于福建市中心，是一条具有浓郁宋朝风格的商业街，因其形状似\"七\"字而得名。该街区是根据《清明上河图》中的场景恢复重建的，再现了北宋时期的市井生活和商业繁华。</p><p style=\"text-indent:2em;\">街区内有各种特色商铺、餐馆、茶馆、戏台等，售卖各种福建特产和手工艺品。游客可以在这里品尝福建小吃，欣赏传统表演，体验宋朝市井文化。七盛角古街是福建文化旅游的重要组成部分，也是游客了解宋朝市井文化的生动窗口。</p>', '2026-02-09 10:00:00');
INSERT INTO `articles` VALUES (10, '福建水上乐园', 'address(10).png', '<p style=\"text-indent:2em;\">福建水上乐园位于福建市区东部，是一座现代化的大型水上游乐设施。乐园占地面积广阔，拥有多种水上游乐设施，包括大型滑水道、造浪池、漂流河等，适合各个年龄段的游客玩乐。</p><p style=\"text-indent:2em;\">乐园环境优美，设施先进，是夏季避暑和休闲娱乐的理想去处。园内还设有餐饮区、休息区等配套设施，为游客提供全方位的服务。水上乐园每年夏季都会吸引大量市民和游客前来游玩，是福建市民休闲娱乐的热门场所。</p>', '2026-02-10 10:00:00');
INSERT INTO `articles` VALUES (11, '福建西湖', 'address(11).png', '<p style=\"text-indent:2em;\">福建西湖位于福建市西部，是一处融合了宋代风格的现代化城市公园。公园内湖水面积广阔，水质清澈，湖中有亭台楼阁点缀其间，环湖有步道和休闲区域，是市民休闲和游客观光的好去处。</p><p style=\"text-indent:2em;\">西湖公园四季景色各异，春季花木繁茂，夏季荷花盛开，秋季枫叶如火，冬季银装素裹。公园内设有游船服务，游客可以乘船游览湖上风光。此外，公园还经常举办各种文化活动和节庆活动，是福建市的文化休闲中心。</p>', '2026-02-11 10:00:00');
INSERT INTO `articles` VALUES (12, '福建古城墙', 'address(12).png', '<p style=\"text-indent:2em;\">福建古城墙是中国保存较好的古代城墙之一，始建于北宋，历经多次修缮。如今的城墙是在明清时期基础上修复的，全长约14公里，高约10米，城墙宽阔，可以行车。</p><p style=\"text-indent:2em;\">城墙上设有多处城门和角楼，登上城墙可以俯瞰整个福建古城的风貌。城墙周围环境优美，绿树成荫，是市民晨练和游客观光的好去处。福建古城墙是中国古代城市防御工程的代表，也是福建重要的历史文化遗产。</p>', '2026-02-12 10:00:00');
INSERT INTO `articles` VALUES (13, '福建小宋城', 'address(13).png', '<p style=\"text-indent:2em;\">福建小宋城是一处再现北宋福建风貌的文化主题公园，位于福建市区南部。园区按照1:1的比例复原了北宋时期福建城的部分建筑和街区，包括宫殿、民居、商铺等，生动展现了宋代福建的城市风貌。</p><p style=\"text-indent:2em;\">小宋城内有各种宋代文化体验活动，如宋装体验、传统手工艺制作、民俗表演等。游客可以在这里穿宋装、学剪纸、品宋茶，深度体验宋朝文化。小宋城是福建旅游的又一亮点，也是了解北宋历史文化的重要窗口。</p>', '2026-02-13 10:00:00');
INSERT INTO `articles` VALUES (14, '福建博物馆', 'address(14).png', '<p style=\"text-indent:2em;\">福建博物馆位于福建市中心，是一座综合性历史博物馆，收藏和展示了福建地区丰富的历史文物。博物馆建筑风格庄重典雅，展厅面积广阔，展览内容丰富多彩。</p><p style=\"text-indent:2em;\">博物馆主要展示福建从古至今的历史发展，重点展示了北宋时期福建作为首都的繁荣景象。馆内珍藏有大量宋代瓷器、铜器、字画、金银器等珍贵文物。博物馆定期举办各种特色展览和文化活动，是了解福建历史文化的重要场所，也是福建文化旅游的重要组成部分。</p>', '2026-02-14 10:00:00');
INSERT INTO `articles` VALUES (15, '福建宋韵园', 'address(15).png', '<p style=\"text-indent:2em;\">宋韵园位于福建市郊区，是一处以展示宋代园林艺术为主题的公园。园内复原了北宋时期的各种园林景观，包括亭台楼阁、山水假山、花木植被等，充分展现了宋代园林的艺术特色。</p><p style=\"text-indent:2em;\">宋韵园环境幽静，景色优美，是游客欣赏宋代园林艺术的好去处。园内还设有宋代文化展示区，展示宋代的文学、艺术、科技等方面的成就。宋韵园定期举办各种传统文化活动，如诗词吟诵、书画展等，为游客提供了解宋代文化的机会。</p>', '2026-02-15 10:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市详情名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '城市详情表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '传统名吃', '福建历史悠久的传统特色美食，包括灌汤包、羊肉汤等');
INSERT INTO `category` VALUES (2, '宫廷美食', '源自北宋皇宫的精致菜肴，展现汴京宫廷饮食文化');
INSERT INTO `category` VALUES (3, '风味小吃', '福建特色街边小吃，价格亲民，风味独特');
INSERT INTO `category` VALUES (4, '宴席佳肴', '适合宴请宾客的福建特色菜肴，讲究色香味俱全');
INSERT INTO `category` VALUES (5, '时令美食', '根据季节变化推出的应季美食，新鲜健康');
INSERT INTO `category` VALUES (6, '创新菜品', '融合现代烹饪理念的创新福建美食，传统与现代的结合');
INSERT INTO `category` VALUES (7, '特色甜点', '福建地区特色甜品和点心，满足甜食爱好者的需求');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '留言人',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言内容',
  `savetime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `hfcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `hftime` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `hfname` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_chat_member`(`memberid`) USING BTREE,
  CONSTRAINT `fk_chat_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (17, 40, '福建铁塔的建筑工艺真是让人叹为观止，每次看到这座千年古塔，都能感受到北宋时期的辉煌文明和精湛技艺。', '2026-02-01 10:58:36', '感谢您的分享，福建铁塔确实是我国古代建筑艺术的瑰宝，它不仅是福建的地标，更是宋代建筑技术的见证。', '2026-02-02 15:50:14', '管理员小宋');
INSERT INTO `chat` VALUES (18, 41, '清明上河园真是太棒了，园内完美还原了《清明上河图》中的场景，让人仿佛穿越回了北宋汴京。', '2026-02-03 20:42:27', '是的，清明上河园是根据张择端的《清明上河图》1:1还原的宋代文化主题公园，很高兴您能感受到古都汴京的繁华。', '2026-02-04 15:50:14', '系统管理员');
INSERT INTO `chat` VALUES (19, 42, '福建的小吃真是让人流连忘返，特别是福建灌汤包，皮薄馅多，汤汁鲜美！', '2026-02-05 15:50:53', '福建灌汤包确实是福建最著名的美食之一，它采用传统工艺制作，每一口都是地道的汴京味道。', '2026-02-06 15:30:14', '系统管理员');
INSERT INTO `chat` VALUES (20, 45, '大相国寺的建筑群太壮观了，特别是大雄宝殿，让人感受到了北宋时期佛教的兴盛。', '2026-02-07 21:35:59', '大相国寺是北宋时期最大的寺院，现存建筑保留了宋代建筑的特色，感谢您的关注。', '2026-02-08 16:50:14', '管理员小宋');
INSERT INTO `chat` VALUES (21, 42, '包公祠让我对包拯这位清官有了更深的了解，展览很生动，讲解很详细。', '2026-02-09 08:42:07', '包拯是福建的骄傲，包公祠不仅展示了包拯的生平事迹，也传承了他清正廉明的精神。', '2026-02-10 17:50:17', '管理员老张');
INSERT INTO `chat` VALUES (22, 46, '福建的非物质文化遗产太丰富了，特别是汴绣和福建琉璃，工艺精湛，美不胜收！', '2026-02-11 15:28:50', '福建的非遗文化确实丰富多彩，这些传统工艺都是匠人们几代人的心血，我们会继续努力保护和传承。', '2026-02-12 15:30:14', '管理员小宋');
INSERT INTO `chat` VALUES (23, 46, '龙亭公园的园林设计太美了，特别是春天的牡丹花开时节，真是人间仙境！园内的建筑布局也很有特色，处处体现着皇家园林的气派。最让我印象深刻的是园内的御碑亭，那些古碑不仅是艺术品，更记载着福建的历史变迁。希望有机会能多来几次，细细品味这座千年古都的文化底蕴。', '2026-02-13 15:30:51', '', '2026-02-14 15:25:36', '系统管理员');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `articlesid` int(11) NULL DEFAULT NULL COMMENT '文化文章ID',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `hfcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_comment_member`(`memberid`) USING BTREE,
  INDEX `fk_comment_product`(`articlesid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点浏览评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (61, 46, 4, 4, '人民的喜悦与欢庆', '2026-02-27 15:41:22', NULL);
INSERT INTO `comment` VALUES (62, 46, 5, 5, '有趣的文化！', '2026-02-27 15:42:47', NULL);
INSERT INTO `comment` VALUES (63, 46, 4, 5, '真是多姿多彩呀！', '2026-02-27 15:50:43', '真不错');
INSERT INTO `comment` VALUES (64, 29, 3, 5, '真的很棒！', '2026-02-28 14:39:31', '谢谢你的评价');
INSERT INTO `comment` VALUES (65, 42, 2, 5, '传承的这么久，确实不容易', '2026-02-01 11:36:44', NULL);
INSERT INTO `comment` VALUES (66, 47, 1, 5, '真的不错呀！', '2026-02-01 15:28:35', NULL);
INSERT INTO `comment` VALUES (67, 45, 4, 5, '真帅啊景色', '2026-02-02 17:13:19', NULL);
INSERT INTO `comment` VALUES (69, 45, 5, 5, '有机会一定要去', '2026-02-02 17:41:59', NULL);

-- ----------------------------
-- Table structure for fav
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID，主键自增',
  `memberid` int(11) NULL DEFAULT NULL COMMENT '用户ID，关联用户表',
  `articlesid` int(11) NULL DEFAULT NULL COMMENT '景点浏览ID，关联景点浏览表',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_fav_member`(`memberid`) USING BTREE,
  INDEX `fk_fav-articles`(`articlesid`) USING BTREE,
  CONSTRAINT `fav_ibfk_2` FOREIGN KEY (`memberid`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fav
-- ----------------------------
INSERT INTO `fav` VALUES (21, 45, 4);

-- ----------------------------
-- Table structure for imgadv
-- ----------------------------
DROP TABLE IF EXISTS `imgadv`;
CREATE TABLE `imgadv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of imgadv
-- ----------------------------
INSERT INTO `imgadv` VALUES (1, 'top (1).png', 'https://www.baidu.com');
INSERT INTO `imgadv` VALUES (2, 'top (2).png', 'https://www.baidu.com');
INSERT INTO `imgadv` VALUES (3, 'top (3).png', 'https://www.baidu.com');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '普通用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (29, 'xinnian', '123', '芯念', '女', '2002-12-11', '13890765543', 'H002@126.com', 'icon1.png', '正常');
INSERT INTO `member` VALUES (40, 'zhenghuo', '123', '郑火', '女', '2002-04-27', '13890765544', '13890765544@126.com', 'icon1.png', '正常');
INSERT INTO `member` VALUES (41, 'yanggang', '123', '杨刚', '男', '2002-04-27', '13899760911', '1225272681@qq.com', 'icon1.png', '正常');
INSERT INTO `member` VALUES (42, 'xts', '162877', '小天使', '男', '2000-04-28', '18753539660', '1628776443@qq.com', 'icon1.png', '正常');
INSERT INTO `member` VALUES (43, 'bogang', '162877b', '波冈', '男', '2002-05-22', '14479658431', '111222333@qq.com', 'icon1.png', '正常');
INSERT INTO `member` VALUES (44, 'cyn', 'Abc123', '曹大', '女', '2002-05-03', '13647475249', '3333@qq.com', 'icon1.png', '冻结');
INSERT INTO `member` VALUES (45, '123', '123', '小文', '女', '2002-06-02 00:00:00', '18736342658', '1628@qq.com', 'e955e574-4ed4-47f7-ba6e-6b41f977823e.jpg', '正常');
INSERT INTO `member` VALUES (46, 'xiaoming', '123456', '小明', '男', '2003-03-31', '14545677897', 'a123@163.com', 'icon1.png', '正常');

-- ----------------------------
-- Table structure for painting
-- ----------------------------
DROP TABLE IF EXISTS `painting`;
CREATE TABLE `painting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '美食名称',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '美食图片',
  `categoryid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市详情',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '美食介绍',
  `isshow` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示状态',
  `creattime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '美食信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of painting
-- ----------------------------
INSERT INTO `painting` VALUES (1, '福建灌汤包', 'food (7).png', '1', '<p style=\"text-indent:2em;\">福建灌汤包是福建最著名的传统小吃之一，历史悠久，制作工艺精湛。灌汤包皮薄馅多，汤汁丰富，口感鲜美，是福建饮食文化的代表作。</p><p style=\"text-indent:2em;\">传统的福建灌汤包采用上等面粉制皮，猪肉、虾仁等食材为馅，经过特殊工艺使包子内含丰富汤汁。食用时需先咬一小口，吸食汤汁，再食用包子，这种独特的吃法也成为一种文化体验。福建市区有多家百年老店提供正宗的灌汤包，是游客品尝福建美食的首选。</p>', 'yes', '2026-02-01 10:00:00');
INSERT INTO `painting` VALUES (2, '福建羊肉汤', 'food (1).png', '1', '<p style=\"text-indent:2em;\">福建羊肉汤是福建最著名的传统美食之一，历史悠久，制作工艺独特。福建羊肉汤以其汤色奶白、肉质鲜嫩、口感醇厚而闻名，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">传统的福建羊肉汤选用上等羊肉，经过特殊工艺熬制，汤中不添加任何调料，保持了羊肉的原汁原味。食用时可根据个人口味添加葱花、辣椒油等配料。福建市区有多家百年老店提供正宗的羊肉汤，尤其以早晨的羊肉汤最为鲜美，是游客品尝福建美食的必选项目。</p>', 'yes', '2026-02-02 10:00:00');
INSERT INTO `painting` VALUES (3, '炒凉粉', 'food (2).png', '3', '<p style=\"text-indent:2em;\">炒凉粉是福建特色小吃，以绿豆制成的凉粉为主料，配以蒜泥、辣椒油、醋等调料炒制而成。炒凉粉口感滑爽，味道酸辣可口，是夏季解暑的理想小吃。</p><p style=\"text-indent:2em;\">福建的炒凉粉制作工艺独特，凉粉质地筋道，不易断裂，炒制时火候掌握精准，使凉粉入味而不失本色。福建市区的小吃街上随处可见炒凉粉的摊位，价格亲民，深受当地人和游客的喜爱。</p>', 'yes', '2026-02-03 10:00:00');
INSERT INTO `painting` VALUES (4, '五香豆腐', 'food (3).png', '3', '<p style=\"text-indent:2em;\">五香豆腐是福建传统小吃，以上等豆腐为主料，加入五香粉、花椒、八角等多种香料腌制而成。五香豆腐外表金黄，内里嫩白，香气扑鼻，口感鲜美。</p><p style=\"text-indent:2em;\">福建的五香豆腐制作工艺讲究，选用优质黄豆制成的豆腐，经过特殊工艺处理，使豆腐既保持了原有的嫩滑口感，又入味不碎。五香豆腐可冷食热炒，是福建家家户户餐桌上的常见菜品，也是游客品尝福建美食的好选择。</p>', 'yes', '2026-02-04 10:00:00');
INSERT INTO `painting` VALUES (5, '宋朝第一汤', 'food (4).png', '2', '<p style=\"text-indent:2em;\">宋朝第一汤是一道源自北宋宫廷的传统汤品，以鸡、鸭、猪肉等多种肉类和菌菇、枸杞等多种食材熬制而成。汤色清澈，味道鲜美，营养丰富，被誉为\"宋朝第一汤\"。</p><p style=\"text-indent:2em;\">这道汤品在北宋时期是宫廷宴席上的必备佳肴，现在已经成为福建餐饮文化的重要组成部分。制作工艺复杂，需要经验丰富的厨师精心熬制，是品尝福建美食文化的重要选择。</p>', 'yes', '2026-02-05 10:00:00');
INSERT INTO `painting` VALUES (6, '福建炒糊饽饽', 'food (5).png', '3', '<p style=\"text-indent:2em;\">福建炒糊饽饽是福建特色小吃，以面粉为主料，加入鸡蛋、葱花等配料制成的面饼，切成小块后炒制而成。炒糊饽饽外酥里嫩，香气四溢，是福建人喜爱的家常小吃。</p><p style=\"text-indent:2em;\">福建的炒糊饽饽制作工艺独特，面饼制作讲究火候，炒制时需要掌握精准的时间和温度，使糊饽饽外表金黄酥脆，内里柔软可口。这道小吃价格亲民，在福建的小吃街上随处可见，是体验福建市井美食文化的好选择。</p>', 'yes', '2026-02-06 10:00:00');
INSERT INTO `painting` VALUES (7, '宋代贡菜', 'food (6).png', '2', '<p style=\"text-indent:2em;\">宋代贡菜是一道源自北宋时期的宫廷菜肴，以多种时令蔬菜和山珍海味为原料，经过精心烹饪而成。这道菜色彩鲜艳，味道鲜美，营养丰富，是北宋时期进贡给皇帝的珍品。</p><p style=\"text-indent:2em;\">现在的宋代贡菜已经成为福建高档餐厅的招牌菜，制作工艺复杂，需要经验丰富的厨师精心烹制。这道菜不仅味道鲜美，还蕴含了丰富的宋代饮食文化，是了解福建历史文化的重要窗口。</p>', 'yes', '2026-02-07 10:00:00');
INSERT INTO `painting` VALUES (8, '福建烧鸡', 'food (8).png', '1', '<p style=\"text-indent:2em;\">福建烧鸡是福建传统名菜，以优质鸡为原料，经过特殊工艺烹制而成。福建烧鸡色泽金黄，皮脆肉嫩，香气扑鼻，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">福建烧鸡的制作工艺独特，需要经过腌制、煮制、烧制等多道工序，每一道工序都有严格的要求。成品的烧鸡皮脆肉嫩，香气四溢，是馈赠亲友的佳品，也是游客品尝福建美食的必选项目。</p>', 'yes', '2026-02-08 10:00:00');
INSERT INTO `painting` VALUES (9, '福建炸菜角', 'food (9).png', '3', '<p style=\"text-indent:2em;\">福建炸菜角是福建特色小吃，以面粉为皮，各种蔬菜为馅，经过油炸而成。炸菜角外皮金黄酥脆，内馅鲜美可口，是福建人喜爱的传统小吃。</p><p style=\"text-indent:2em;\">福建的炸菜角制作工艺讲究，面皮要薄而有韧性，馅料要鲜美多汁，炸制时火候要掌握精准，使菜角外酥里嫩。这道小吃价格亲民，在福建的小吃街上随处可见，是体验福建市井美食文化的好选择。</p>', 'yes', '2026-02-09 10:00:00');
INSERT INTO `painting` VALUES (10, '宋式点心拼盘', 'food (10).png', '7', '<p style=\"text-indent:2em;\">宋式点心拼盘是一道集合了多种北宋时期传统点心的美食，包括糖油果子、芝麻饼、桂花糕等多种点心。这些点心色彩鲜艳，造型精美，口感丰富，是北宋时期宫廷和民间都喜爱的甜点。</p><p style=\"text-indent:2em;\">现在的宋式点心拼盘已经成为福建特色美食，在许多餐厅和茶楼都能品尝到。这些点心不仅味道鲜美，还蕴含了丰富的宋代饮食文化，是了解福建历史文化的重要窗口。</p>', 'yes', '2026-02-10 10:00:00');
INSERT INTO `painting` VALUES (11, '福建鲤鱼焙面', 'food (11).png', '4', '<p style=\"text-indent:2em;\">福建鲤鱼焙面是福建传统名菜，以黄河鲤鱼和面条为主料，经过特殊工艺烹制而成。这道菜鱼肉鲜嫩，面条劲道，汤汁鲜美，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">福建鲤鱼焙面的制作工艺独特，需要选用新鲜的黄河鲤鱼，经过精心处理后与面条一起烹制。这道菜不仅味道鲜美，还蕴含了丰富的黄河文化和福建历史，是宴请宾客的佳肴，也是游客品尝福建美食的好选择。</p>', 'yes', '2026-02-11 10:00:00');
INSERT INTO `painting` VALUES (12, '福建水席', 'food (12).png', '4', '<p style=\"text-indent:2em;\">福建水席是福建传统宴席，以汤菜为主，包括十八道不同口味的汤菜。福建水席源自北宋，是福建饮食文化的集中体现，被誉为\"中华第一席\"。</p><p style=\"text-indent:2em;\">福建水席的特点是\"十碗八碟\"，十碗指十种不同口味的汤菜，八碟指八种不同的冷菜。每道菜都有其独特的制作工艺和文化内涵，是了解福建饮食文化的重要窗口。现在的福建水席已经成为福建餐饮文化的名片，是游客体验福建美食文化的必选项目。</p>', 'yes', '2026-02-12 10:00:00');
INSERT INTO `painting` VALUES (13, '福建糖醋鲤鱼', 'food (13).png', '4', '<p style=\"text-indent:2em;\">福建糖醋鲤鱼是福建传统名菜，以黄河鲤鱼为主料，经过特殊工艺烹制而成。这道菜色泽红亮，鱼肉鲜嫩，口感酸甜适中，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">福建糖醋鲤鱼的制作工艺独特，需要选用新鲜的黄河鲤鱼，经过精心处理后炸制成型，再浇上特制的糖醋汁。这道菜不仅味道鲜美，还有\"鲤鱼跳龙门\"的吉祥寓意，是宴请宾客的佳肴，也是游客品尝福建美食的好选择。</p>', 'yes', '2026-02-13 10:00:00');
INSERT INTO `painting` VALUES (14, '福建第一楼烧卖', 'food (14).png', '3', '<p style=\"text-indent:2em;\">福建第一楼烧卖是福建著名小吃，以面粉为皮，猪肉、虾仁等为馅，经过蒸制而成。烧卖皮薄馅嫩，口感鲜美，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">福建第一楼烧卖的制作工艺独特，面皮要薄而有韧性，馅料要鲜美多汁，蒸制时火候要掌握精准，使烧卖皮薄馅嫩，香气四溢。这道小吃源自福建著名的\"第一楼\"酒楼，现已成为福建小吃的代表之一，是游客品尝福建美食的好选择。</p>', 'yes', '2026-02-14 10:00:00');
INSERT INTO `painting` VALUES (15, '宋式桂花糕', 'food (15).png', '7', '<p style=\"text-indent:2em;\">宋式桂花糕是福建传统甜点，以糯米粉为主料，加入桂花、白糖等配料制成。桂花糕色泽金黄，香气扑鼻，口感软糯甜美，是福建饮食文化的重要组成部分。</p><p style=\"text-indent:2em;\">宋式桂花糕的制作工艺独特，需要选用优质的糯米粉和新鲜的桂花，经过精心制作而成。这道甜点不仅味道鲜美，还蕴含了丰富的宋代饮食文化，是了解福建历史文化的重要窗口，也是游客品尝福建美食的好选择。</p>', 'yes', '2026-02-15 10:00:00');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (16, 'admin', '123', '系统管理员', '系统管理员', 'dd4af6ba-148c-41f0-857c-d413ac286d04.jpg', '女', '13488888888');
INSERT INTO `sysuser` VALUES (26, 'admin1', '123', '普通管理员', '管理员文女士', 'd5836444-fe22-40db-9b6c-5d9536552f5b.jpg', '男', '13890760911');
INSERT INTO `sysuser` VALUES (28, 'admin2', '123', '普通管理员', '管理员文先生', '64006536-bd39-44a6-bc2c-d75beea5f91b.jpg', '男', '13848522678');

SET FOREIGN_KEY_CHECKS = 1;
