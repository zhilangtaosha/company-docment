/*
Navicat MySQL Data Transfer

Source Server         : 122.14.217.106
Source Server Version : 50639
Source Host           : 122.14.217.106:3306
Source Database       : new_cecook_schema

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-04-26 11:10:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_base_info
-- ----------------------------
DROP TABLE IF EXISTS `activity_base_info`;
CREATE TABLE `activity_base_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `description` text COMMENT '描述',
  `web_url` varchar(255) DEFAULT '' COMMENT '网页链接',
  `pic_url` varchar(1000) DEFAULT NULL COMMENT '相册图片',
  `coupon_send_type` varchar(255) DEFAULT '' COMMENT '优惠券发放类型：send_email、send_sms',
  `effective_day` int(11) DEFAULT '0' COMMENT '有效时间(单位：天)',
  `coupon_number` int(11) DEFAULT '0' COMMENT '优惠券最大发放数量',
  `activity_type` varchar(255) DEFAULT '' COMMENT '标记活动类型、自定义、相册等等',
  `tag_defined` varchar(255) DEFAULT '' COMMENT '标签定义',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `content` varchar(255) DEFAULT '' COMMENT '文本',
  `pic` varchar(255) DEFAULT '' COMMENT '分享后url',
  `status` int(11) DEFAULT '0' COMMENT '状态：启用1、停用0|针对活动才生效',
  `share_channel` varchar(255) DEFAULT '' COMMENT '分享渠道：weixin、qq、weibo',
  `model_id` bigint(20) DEFAULT '0' COMMENT '模板id',
  `head_pic` varchar(255) DEFAULT '' COMMENT '列表页缩略图',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `coupon_expire_day` int(11) DEFAULT '0' COMMENT '优惠券到期提醒时间',
  `commit_info` varchar(255) DEFAULT '' COMMENT '提交表单信息',
  `weibo_qrcode` varchar(255) DEFAULT '' COMMENT '微博二维码',
  `weixin_qrcode` varchar(255) DEFAULT '' COMMENT '微信二维码',
  `browse_num` int(11) DEFAULT '0' COMMENT '浏览数量',
  `receive_coupon_num` int(11) DEFAULT '0' COMMENT '优惠券领取数量',
  `write_off_num` int(11) DEFAULT '0' COMMENT '核销数量',
  `background_pic` varchar(255) DEFAULT '' COMMENT '背景图',
  `background_music` varchar(255) DEFAULT '' COMMENT '背景音乐',
  `button_text` varchar(255) DEFAULT '' COMMENT '按钮文本',
  `button_css` varchar(255) DEFAULT '' COMMENT '按钮样式',
  `theme_info` varchar(255) DEFAULT '' COMMENT '主体信息',
  `theme_info_color` varchar(255) DEFAULT '' COMMENT '主题信息颜色',
  `text_info_color` varchar(255) DEFAULT '' COMMENT '文本颜色',
  `coupon_template_id` bigint(20) DEFAULT '0' COMMENT '优惠劵模板id|thirdparty_coupon_model表id',
  `sms_batch_id` bigint(20) DEFAULT '0' COMMENT '短信批次id',
  `coupon_name` varchar(255) DEFAULT '' COMMENT '优惠券名称',
  `activity_tag` varchar(255) DEFAULT '' COMMENT '活动标记',
  `coupon_flag` int(11) DEFAULT '0' COMMENT '是否使用第三方优惠券标记',
  `distinction` int(11) DEFAULT '0' COMMENT '标记是活动还是业务', 
  `expire_reminder_content` varchar(255) DEFAULT '' COMMENT '优惠券到期提醒发送的短信内容',
  `sms_content` varchar(255) DEFAULT '' COMMENT '参加活动发送的短信内容', 
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  `belong_department_id` bigint(20) default '0' comment '所属部门id',     
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动表';

-- ----------------------------
-- Table structure for activity_browse_record
-- ----------------------------
DROP TABLE IF EXISTS `activity_browse_record`;
CREATE TABLE `activity_browse_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `activity_name` varchar(255) DEFAULT '' COMMENT '活动名称',
  `browse_ip` varchar(255) DEFAULT '' COMMENT '客户端访问ip',
  `open_way` varchar(255) DEFAULT '' COMMENT '打开方式：weixin、qq',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机号',
  `customer_id` bigint(20) DEFAULT '0' COMMENT '会员id',
  `sms_batch` varchar(255) DEFAULT '' COMMENT '短信批次',
  `card_id` bigint(20) DEFAULT '0' COMMENT '名片id',
  `openId` varchar(255) DEFAULT '' COMMENT '酷客平台openId',
  `channel_type` bigint(20) DEFAULT '0' COMMENT '标记渠道',
  `coupon_batch` bigint(20) DEFAULT '0' COMMENT '标记注券批次',
  `longitude` varchar(20) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(20) DEFAULT NULL COMMENT '纬度',
  `province_id` varchar(20) DEFAULT NULL COMMENT '省份id',
  `city_id` varchar(20) DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(20) DEFAULT NULL COMMENT '区域id',
  `task_id`  bigint(20) DEFAULT '0' COMMENT '任务id', 
  `transmit_tag` int(2) DEFAULT NULL COMMENT '0表示未转发，即一次人脉 1表示转发 即二次人脉',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动浏览记录';

-- ----------------------------
-- Table structure for activity_music_list
-- ----------------------------
DROP TABLE IF EXISTS `activity_music_list`;
CREATE TABLE `activity_music_list` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `size` varchar(255) DEFAULT '' COMMENT '大小',
  `duration` varchar(255) DEFAULT '' COMMENT '时长',
  `author` varchar(255) DEFAULT '' COMMENT '作者',
  `url` varchar(255) DEFAULT '' COMMENT '播放地址',
  `lyric` varchar(255) DEFAULT '' COMMENT '歌词',
  `format` varchar(255) DEFAULT '' COMMENT '音乐格式',
  `background_pic` varchar(255) DEFAULT '' COMMENT '背景图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='音乐列表';

-- ----------------------------
-- Table structure for activity_transmit_record
-- ----------------------------
DROP TABLE IF EXISTS `activity_transmit_record`;
CREATE TABLE `activity_transmit_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `transmit_way` varchar(255) DEFAULT '' COMMENT '转发渠道(weixin qq weibo)',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `transmit_tag` varchar(255) DEFAULT '' COMMENT '转发标记(0表示一次转发 1表示二次转发)',
  `customer_id` bigint(20) DEFAULT '0' COMMENT '启用为客户id ',
  `user_client_ip` varchar(255) DEFAULT '' COMMENT '用户IP地址',
  `card_id` bigint(20) DEFAULT '0' COMMENT '名片id',
  `open_id` varchar(255) DEFAULT '' COMMENT '微信openid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动转发记录表';

-- ----------------------------
-- Table structure for activity_user_defined_template
-- ----------------------------
DROP TABLE IF EXISTS `activity_user_defined_template`;
CREATE TABLE `activity_user_defined_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `bg_color` varchar(10) DEFAULT NULL COMMENT '背景颜色',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `type` varchar(255) DEFAULT '' COMMENT '标记模板类型',
  `pic_url` text COMMENT '相册模板的图片地址',
  `text_info` text COMMENT '编辑的文本内容',
  `address_info` varchar(255) DEFAULT '' COMMENT '地址信息',
  `collect_info` varchar(255) DEFAULT '' COMMENT '用户参加活动时需要提交的信息',
  `button_css` varchar(255) DEFAULT '' COMMENT '按钮的样式(颜色代码)',
  `button_text` varchar(255) DEFAULT '' COMMENT '按钮文本',
  `background_music` varchar(255) DEFAULT '' COMMENT '背景音乐',
  `content` varchar(255) DEFAULT '' COMMENT '内容',
  `web_url` varchar(255) DEFAULT '' COMMENT '模板链接',
  `custom_sms_text` varchar(255) DEFAULT '' COMMENT '自定义短信发送内容',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `background_pic` varchar(255) DEFAULT '' COMMENT '背景图片',
  `update_name` varchar(255) DEFAULT '' COMMENT '更新人名称',
  `use_time` datetime DEFAULT NULL COMMENT '最近使用时间',
  `create_user_id_name` varchar(255) DEFAULT '' COMMENT '创建人名称',
  `weixin_qrcode` varchar(255) DEFAULT '' COMMENT '微信二维码',
  `weibo_qrcode` varchar(255) DEFAULT '' COMMENT '微博二维码',
  `thumbnail_pic` varchar(255) DEFAULT '' COMMENT '缩略图',
  `status` int(11) DEFAULT '0' COMMENT '状态(0正常，1模板被锁定 处于编辑中)',
  `model_pic` varchar(255) DEFAULT '' COMMENT '模板大图',
  `text_info_color` varchar(255) DEFAULT '' COMMENT '文本颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动用户自定义模板';

-- ----------------------------
-- Table structure for auto_market_point_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_point_info`;
CREATE TABLE `auto_market_point_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `task_id` bigint(20) DEFAULT '0' COMMENT '任务id',
  `parent_task_id` bigint(20) DEFAULT '0' COMMENT '父任务id',
  `point_id` bigint(20) DEFAULT '0' COMMENT '节点id',
  `parent_point_id` bigint(20) DEFAULT '0' COMMENT '父节点id',
  `point_info` varchar(2000) DEFAULT NULL COMMENT '节点信息(Json串)',
  `point_type` int(11) DEFAULT '0' COMMENT '节点类型。1.条件。2.时间。3.动作',
  `template_id` bigint(20) DEFAULT '0' COMMENT '模板id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销节点表';

-- ----------------------------
-- Table structure for auto_market_point_info_temp
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_point_info_temp`;
CREATE TABLE `auto_market_point_info_temp` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `task_id` bigint(20) DEFAULT '0' COMMENT '任务id',
  `parent_task_id` bigint(20) DEFAULT '0' COMMENT '父任务id',
  `point_id` bigint(20) DEFAULT '0' COMMENT '节点id',
  `parent_point_id` bigint(20) DEFAULT '0' COMMENT '父节点id',
  `point_info` varchar(2000) DEFAULT NULL COMMENT '节点信息(Json串)',
  `point_type` int(11) DEFAULT '0' COMMENT '节点类型。1.条件。2.时间。3.动作',
  `template_id` bigint(20) DEFAULT '0' COMMENT '模板id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销节点记录临时表';

-- ----------------------------
-- Table structure for auto_market_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_sms_template`;
CREATE TABLE `auto_market_sms_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '模板名称',
  `content` varchar(512) DEFAULT NULL COMMENT '模板内容',
  `type` varchar(255) DEFAULT '' COMMENT '模板类型(sales_service售后服务，smart_market智能营销)',
  `content_type` varchar(255) DEFAULT '' COMMENT '模板内容类型(buy_medicine_remind购药提醒，useTaboo使用禁忌，orderDesc订单描述)',
  `autograph_id` bigint(20) DEFAULT '0' COMMENT '短信签名id',
  `is_show` int(11) DEFAULT '0' COMMENT '标记是否再列表显示(1显示，2不显示)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销短信模板';

-- ----------------------------
-- Table structure for auto_market_task_rule
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_task_rule`;
CREATE TABLE `auto_market_task_rule` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `ex_rule_group_info` varchar(255) DEFAULT '' COMMENT '会员分组条件',
  `ex_rule_customer_info` varchar(255) DEFAULT '' COMMENT '会员基本信息条件',
  `ex_rule_action_info` varchar(255) DEFAULT '' COMMENT '行为选人条件',
  `ex_rule_rfm_info` varchar(255) DEFAULT '' COMMENT 'RFM选人条件',
  `ex_rule_trigger` int(11) DEFAULT '0' COMMENT '触发条件：选人条件 1.新建会员 2.购买商品 3.购物金额 4.生日 5.储值 6.卡券核销',
  `ex_rule_trigger_info` varchar(255) DEFAULT '' COMMENT '触发条件明细',
  `point_id` bigint(20) DEFAULT '0' COMMENT '节点id',
  `ex_rule_medicine_info` varchar(255) DEFAULT '' COMMENT '药品行业条件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销任务表';

-- ----------------------------
-- Table structure for auto_market_task_statistics
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_task_statistics`;
CREATE TABLE `auto_market_task_statistics` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `task_id` bigint(20) DEFAULT '0' COMMENT '任务id',
  `send_count` bigint(20) DEFAULT '0' COMMENT '活动短信发送量',
  `arrive_count` bigint(20) DEFAULT '0' COMMENT '活动短信到达量',
  `click_count` bigint(20) DEFAULT '0',
  `submit_count` bigint(20) DEFAULT '0',
  `rule_id` bigint(20) DEFAULT '0' COMMENT '条件id',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '模板id',
  `activity_name` varchar(255) DEFAULT '' COMMENT '模板名称',
  `group_count` varchar(255) DEFAULT '' COMMENT '分组选人统计(格式：[{"groupId":"1,"groupName":"分组1","count":"100"}])',
  `write_off_num` bigint(20) DEFAULT '0' COMMENT '核销量',
  `write_off_count` bigint(20) DEFAULT '0' COMMENT '核销总额(单位分)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销任务统计表';

-- ----------------------------
-- Table structure for auto_market_template
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_template`;
CREATE TABLE `auto_market_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `stop_time` datetime DEFAULT NULL COMMENT '停止时间',
  `run_time` datetime DEFAULT NULL COMMENT '启动时间',
  `is_run` int(11) DEFAULT '0' COMMENT '执行状态：0未执行，1执行中，2执行完毕',
  `name` varchar(255) DEFAULT '' COMMENT '模板名称',
  `auditing` int(11) DEFAULT '0' COMMENT '审核状态：0未审核，1审核通过，2审核失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销模板表';

-- ----------------------------
-- Table structure for auto_market_user_defined_template
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_user_defined_template`;
CREATE TABLE `auto_market_user_defined_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父任务id',
  `rule_id` bigint(20) DEFAULT '0' COMMENT '条件组id',
  `ex_action` int(2) DEFAULT NULL COMMENT '发送方式表示：1.短信，2.优惠劵，3.医药',
  `ex_action_id` bigint(20) DEFAULT '0' COMMENT '发送动作id',
  `ex_task_order` int(2) DEFAULT NULL COMMENT '执行顺序：1立刻，2AFTER',
  `ex_loop` int(2) DEFAULT NULL COMMENT '任务是否循环：0循环，1不循环',
  `task_status` int(2) DEFAULT NULL COMMENT '任务状态：1未开始、2开始、3结束',
  `ex_date_type` int(2) DEFAULT NULL COMMENT '时间规则：1立即，2自定义、3生日、4之后、5使用时间',
  `ex_date_info` varchar(0) DEFAULT NULL COMMENT '时间信息',
  `point_id` bigint(20) DEFAULT '0' COMMENT '对应节点中Action类型的id',
  `job_create` int(2) DEFAULT '0' COMMENT '延迟启动task的状态：0未启动，1已启动',
  `template_id` bigint(20) NOT '0' COMMENT 'auto_market_template表id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销模板任务表';

-- ----------------------------
-- Table structure for base_store_info
-- ----------------------------
DROP TABLE IF EXISTS `base_store_info`;
CREATE TABLE `base_store_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `address` varchar(255) DEFAULT '' COMMENT '详细地址',
  `name` varchar(255) DEFAULT '' COMMENT '门店名称',
  `phone` varchar(255) DEFAULT '' COMMENT '门店电话',
  `organization_code` varchar(255) DEFAULT '' COMMENT '组织机构代码',
  `organization_img` varchar(255) DEFAULT '' COMMENT '组织机构证图片地址',
  `lng` varchar(255) DEFAULT '' COMMENT '经度',
  `lat` varchar(255) DEFAULT '' COMMENT '纬度',
  `province_id` int(11) DEFAULT '0' COMMENT '省份',
  `city_id` int(11) DEFAULT '0' COMMENT '城市',
  `area_id` int(11) DEFAULT '0' COMMENT '区域',
  `pwd` varchar(255) DEFAULT '' COMMENT '门店密码',
  `store_code` varchar(255) DEFAULT '' COMMENT '第三方同步的门店编码|比如瑞恩门店编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门店表';

-- ----------------------------
-- Table structure for base_store_to_user
-- ----------------------------
DROP TABLE IF EXISTS `base_store_to_user`;
CREATE TABLE `base_store_to_user` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户id',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户门店中间表';

-- ----------------------------
-- Table structure for business_card_browse_record
-- ----------------------------
DROP TABLE IF EXISTS `business_card_browse_record`;
CREATE TABLE `business_card_browse_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `browse_ip` varchar(255) DEFAULT '' COMMENT '访问ip',
  `open_way` varchar(255) DEFAULT '' COMMENT '打开渠道：weixin、qq、weibo',
  `card_id` bigint(20) DEFAULT '0' COMMENT '名片id',
  `open_id` varchar(255) DEFAULT '' COMMENT '酷客公众号id',
  `longitude` varchar(255) DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) DEFAULT '' COMMENT '维度',
  `province_id` varchar(20) DEFAULT NULL COMMENT '省份id',
  `city_id` varchar(20) DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(20) DEFAULT NULL COMMENT '区域id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='名片浏览记录';

-- ----------------------------
-- Table structure for business_card_info
-- ----------------------------
DROP TABLE IF EXISTS `business_card_info`;
CREATE TABLE `business_card_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `show_interprise` int(11) DEFAULT '1' COMMENT '企业信息是否显示：1显示0不显示',
  `show_business` int(11) DEFAULT '1' COMMENT '业务信息是否显示：1显示0不显示',
  `show_recommend` int(11) DEFAULT '1' COMMENT '推荐信息是否显示：1显示0不显示',
  `company_name` varchar(255) DEFAULT '' COMMENT '公司名称',
  `head_picture` varchar(255) DEFAULT '' COMMENT '头像',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `job` varchar(255) DEFAULT '' COMMENT '职务',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机',
  `telephone` varchar(255) DEFAULT '' COMMENT '固定电话',
  `mail` varchar(255) DEFAULT '' COMMENT '邮箱',
  `weixin` varchar(255) DEFAULT '' COMMENT '微信',
  `weibo` varchar(255) DEFAULT '' COMMENT '微博',
  `qq` varchar(255) DEFAULT '' COMMENT 'qq',
  `md_store` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '' COMMENT '分享后链接',
  `user_id` bigint(20) DEFAULT '0' COMMENT '员工id',
  `share_flag` int(2) DEFAULT '0' COMMENT '是否分享 0否 1是',
  `motto` varchar(512) DEFAULT NULL COMMENT '座右铭', 
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  `business_tag` int(11) DEFAULT '1' COMMENT '业务状态1 代表员工有有权限可以更改2 代表员工没有权限不可更改',
  `activity_tag` int(11) DEFAULT '0' COMMENT '名片绑定的活动是否允许员工设置（0不允许 1允许）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='名片表';

-- ----------------------------
-- Table structure for business_card_transmit_record
-- ----------------------------
DROP TABLE IF EXISTS `business_card_transmit_record`;
CREATE TABLE `business_card_transmit_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `transmit_way` varchar(255) DEFAULT '' COMMENT '转发渠道：weixin、qq、weibo',
  `card_id` bigint(20) DEFAULT '0' COMMENT '名片id ',
  `ip` varchar(255) DEFAULT '' COMMENT 'ip',
  `transmit_tag` int(11) DEFAULT '0' COMMENT '转发标记：1次、2次转发',
  `open_id` varchar(255) DEFAULT '' COMMENT '酷客公众号id',
  `longitude` varchar(255) DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) DEFAULT '' COMMENT '维度',
  `province_id` varchar(20) DEFAULT NULL COMMENT '省份id',
  `city_id` varchar(20) DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(20) DEFAULT NULL COMMENT '地区id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='名片转发记录表';

-- ----------------------------
-- Table structure for coupon_banch_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_banch_info`;
CREATE TABLE `coupon_banch_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `autograph` varchar(255) DEFAULT '' COMMENT '需要发送的短信签名',
  `sms_equivalen_num` int(11) DEFAULT '0' COMMENT '短信等值条数',
  `sms_remind_equivalen_num` int(11) DEFAULT '0' COMMENT '到期提醒短信的等值条数',
  `sms_content` varchar(255) DEFAULT '' COMMENT '短信发送的内容',
  `remind_content` varchar(255) DEFAULT '' COMMENT '到期提醒短信内容',
  `expire_remind_flag` int(11) DEFAULT '0' COMMENT '是否设置到期提醒标记(0表示未设置 1表示设置)|优惠劵到期提醒是否需要发短信提醒',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `activity_url` varchar(255) DEFAULT '' COMMENT '活动链接',
  `coupon_ids` varchar(255) DEFAULT '' COMMENT '绑定的优惠券模板id(，分割)',
  `status` int(11) DEFAULT '0' COMMENT '状态(0启用，1停用)',
  `send_status` int(11) DEFAULT '0' COMMENT '优惠劵派发状态(0未提交审核，1派送成功，2审核中 3派送中 4审核未通过 5派发失败 6审核通过)|',
  `coupon_num` int(11) DEFAULT '0' COMMENT '优惠券派发数量',
  `customer_num` int(11) DEFAULT '0' COMMENT '需要派发的会员数量',
  `send_object_type` int(11) DEFAULT '0' COMMENT '发送对象类型(0全量派发，1分组派发，2导入会员派发)',
  `group_id` text COMMENT '分组id',
  `batch` bigint(20) DEFAULT '0' COMMENT '批次号',
  `start_send_time` datetime DEFAULT NULL COMMENT '开始派发时间',
  `end_send_time` datetime DEFAULT NULL COMMENT '派发结束时间',
  `sms_inform_flag` int(11) DEFAULT '0' COMMENT '是否发送短信标识(0表示不发送，1表示发送)',
  `type` int(11) DEFAULT '0' COMMENT '表示创建类型(0表示自身创建 1表示自动化营销中创建的)',
  `expire_day` int(11) DEFAULT '0' COMMENT '优惠券到期提醒天数',
  `template_id` bigint(20) DEFAULT '0' COMMENT '自动化营销模板id',
  `coupon_model_type` int(11) DEFAULT '0' COMMENT '优惠券模板类型(0表示本系统优惠券 1表示第三方优惠券)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='注券批次';

-- ----------------------------
-- Table structure for coupon_send_record
-- ----------------------------
DROP TABLE IF EXISTS `coupon_send_record`;
CREATE TABLE `coupon_send_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `task_id` bigint(20) DEFAULT '0' COMMENT '自动化营销任务id',
  `expiry_date` datetime DEFAULT NULL COMMENT '失效时间',
  `face_value` bigint(20) DEFAULT '0' COMMENT '面值(单位分)',
  `type` int(11) DEFAULT '0' COMMENT '优惠券类型',
  `is_used` int(11) DEFAULT '0' COMMENT '标记优惠券是否使用  0表示未使用 1表示已使用',
  `using_time` datetime DEFAULT NULL COMMENT '优惠券使用时间',
  `is_forward` int(11) DEFAULT '0' COMMENT '标记是否转发|转发，0未转发。旧代码注释：0表示未转发，即一次人脉 1表示转发 即二次人脉',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `activity_name` varchar(255) DEFAULT '' COMMENT '活动名称',
  `customer_id` bigint(20) DEFAULT '0',
  `coupon_code` varchar(255) DEFAULT '' COMMENT '优惠券码',
  `customer_name` varchar(255) DEFAULT '' COMMENT '会员名称',
  `customer_phone` varchar(255) DEFAULT '' COMMENT '会员手机号码',
  `receive_way` varchar(255) DEFAULT '' COMMENT '领取途径(weixin，qq，weibo，sms)',
  `coupon_name` varchar(255) DEFAULT '' COMMENT '优惠券名称',
  `sms_batch` varchar(255) DEFAULT '' COMMENT '短信群发批次',
  `coupon_template_id` bigint(20) DEFAULT '0' COMMENT '优惠券模板id | coupon_user_defined_template表的主键',
  `limit_price` bigint(20) DEFAULT '0' COMMENT '最低限制金额(核销最低限制单位分)',
  `office_address` varchar(255) DEFAULT '' COMMENT '办公地址',
  `id_card` varchar(255) DEFAULT '' COMMENT '身份证号码',
  `card_id` bigint(20) DEFAULT '0',
  `channel_type` bigint(20) DEFAULT '0' COMMENT '渠道类型(二维码营销)',
  `coupon_batch` bigint(20) DEFAULT '0' COMMENT '注券批次号',
  `contacted` int(11) DEFAULT '0' COMMENT '是否联系(0：未联系；1：已联系)',
  `longitude` varchar(20) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(20) DEFAULT NULL COMMENT '纬度',
  `province_id` varchar(20) DEFAULT NULL COMMENT '省份id',
  `city_id` varchar(20) DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(20) DEFAULT NULL COMMENT '区域id',
  `coupon_model_type` int(11) DEFAULT '0' COMMENT '优惠券模板类型(0表示系统优惠券类型，1表示第三方优惠券模板)',
  `action_user_id` bigint(20) DEFAULT '0' COMMENT '核销操作员id',
  `consumption_amount` int(11) DEFAULT '0' COMMENT '核销的消费金额',
  `consumption_preference` varchar(255) DEFAULT '' COMMENT '用户消费偏好',
  `write_off_time` datetime DEFAULT NULL COMMENT '核销时间',
  `reverse_reason` varchar(255) DEFAULT '' COMMENT '反核销原因',
  `reverse_time` datetime DEFAULT NULL COMMENT '反核销时间',
  `reverse_user_id` bigint(20) DEFAULT '0' COMMENT '反核销用户id',
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠劵发送记录表 ';

-- ----------------------------
-- Table structure for coupon_user_defined_template
-- ----------------------------
DROP TABLE IF EXISTS `coupon_user_defined_template`;
CREATE TABLE `coupon_user_defined_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `face_value` bigint(20) DEFAULT '0' COMMENT '面值(单位分)',
  `type` int(11) DEFAULT '0' COMMENT '类型(0标记是现金券 1是物品券)',
  `status` int(11) DEFAULT '1' COMMENT '状态(1启用 0停用)',
  `validity_period_type` int(11) DEFAULT '0' COMMENT '0表示固定有效期，1表示相对有效期',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期结束时间',
  `use_time_type` int(11) DEFAULT '0' COMMENT '是否设置使用时段(0表示不设使用时段，1表示设置)',
  `period_time_week` varchar(255) DEFAULT '' COMMENT '使用时段星期范围(哪几天能用)',
  `limit_price` bigint(20) DEFAULT '0' COMMENT '使用优惠券的最低消费金额(单位分)',
  `period_time_hour` varchar(255) DEFAULT '' COMMENT '使用时段小时范围(0-24小时)',
  `after_day` int(11) DEFAULT '0' COMMENT '劵的相对有效期(领取后多久有效)',
  `store_ids` varchar(255) DEFAULT '' COMMENT '优惠券使用门店id(，分割)',
  `use_rule` varchar(255) DEFAULT '' COMMENT '使用规则',
  `use_describe` varchar(1000) DEFAULT NULL COMMENT '使用描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券模板';



-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `goods_id` bigint(20) DEFAULT '0' COMMENT '商品id',
  `goods_code` varchar(255) DEFAULT '' COMMENT '货号(客户商品编码)',
  `goods_name` varchar(255) DEFAULT '' COMMENT '商品名称(客户为准)',
  `actual_price` bigint(20) DEFAULT '0' COMMENT '实际售价(单位分)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品信息表';

-- ----------------------------
-- Table structure for goods_scan_record
-- ----------------------------
DROP TABLE IF EXISTS `goods_scan_record`;
CREATE TABLE `goods_scan_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `customer_name` varchar(255) DEFAULT '' COMMENT '客户名称',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店id',
  `goods_number` varchar(255) DEFAULT '' COMMENT '商品编码',
  `bar_code` varchar(255) DEFAULT '' COMMENT '条形码',
  `operate_user_id` bigint(20) DEFAULT '0' COMMENT '操作员',
  `goods_name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `log_type` int(11) DEFAULT '0' COMMENT '日志类型 0 扫码  1纠错',
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品扫码记录表';

-- ----------------------------
-- Table structure for member_base_info
-- ----------------------------
DROP TABLE IF EXISTS `member_base_info`;
CREATE TABLE `member_base_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `province` varchar(255) DEFAULT '' COMMENT '省',
  `area` varchar(255) DEFAULT '' COMMENT '区域',
  `city` varchar(255) DEFAULT '' COMMENT '城市',
  `attachment` varchar(255) DEFAULT '' COMMENT '附件',
  `average_cost` bigint(20) DEFAULT '0' COMMENT '平均消费（单位分）',
  `average_goods_quantity` int(11) DEFAULT '0' COMMENT '平均购买数量',
  `birthday` varchar(255) DEFAULT '' COMMENT '生日(1900-01-01)',
  `compan_email` int(11) DEFAULT '0' COMMENT '公司邮箱|是否接收企业邮件(0接收、1不接收)',
  `compan_sms` int(11) DEFAULT '0' COMMENT '公司短信|是否接收企业短信(0接收、1不接收)',
  `company` varchar(255) DEFAULT '' COMMENT '公司',
  `cost_count` int(11) DEFAULT '0' COMMENT '消费次数',
  `cost_total` bigint(20) DEFAULT '0' COMMENT '消费总计(单位分)',
  `crm_balance` bigint(20) DEFAULT '0' COMMENT '储值(单位分)',
  `crm_discount` double(20,2) DEFAULT NULL COMMENT '折扣',
  `crm_member_level` varchar(255) DEFAULT '' COMMENT '会员级别',
  `crm_score` bigint(20) DEFAULT '0' COMMENT '积分',
  `cust_limit` bigint(20) DEFAULT '0' COMMENT '沉淀额度(单位分)',
  `education` varchar(255) DEFAULT '' COMMENT '教育水平',
  `email` varchar(255) DEFAULT '' COMMENT '邮箱',
  `expired_integral` bigint(20) DEFAULT '0' COMMENT '过期积分',
  `family_size` int(11) DEFAULT '0' COMMENT '家庭人数',
  `fax` varchar(255) DEFAULT '' COMMENT '传真',
  `first_cost` bigint(20) DEFAULT '0' COMMENT '第一次消费金额(单位分)',
  `first_cost_time` datetime DEFAULT NULL COMMENT '第一次消费时间',
  `fixed_phone` varchar(255) DEFAULT '' COMMENT '固定电话',
  `gender` varchar(255) DEFAULT '' COMMENT '性别',
  `goods_total` bigint(20) DEFAULT '0' COMMENT '商品数量总计', 
  `market_id` bigint(20) DEFAULT '0' COMMENT '瑞恩客户代表ID，瑞恩内部的ID',
  `market_name` varchar(255) DEFAULT '' COMMENT '瑞恩客户真实姓名', 
  `id_card` varchar(255) DEFAULT '' COMMENT '身份证',
  `income_range` varchar(255) DEFAULT '' COMMENT '收入范围',
  `job` varchar(255) DEFAULT '' COMMENT '工作',
  `job_number` varchar(255) DEFAULT '' COMMENT '客户代表工号',
  `last_cost` bigint(20) DEFAULT '0' COMMENT '最后一次消费金额(单位分)',
  `last_cost_time` datetime DEFAULT NULL COMMENT '最后一次消费时间',
  `max_cost` bigint(20) DEFAULT '0' COMMENT '最大一次消费(单位分)',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `office_address` varchar(255) DEFAULT '' COMMENT '办公室地址',
  `phone` varchar(255) DEFAULT '' COMMENT '手机',
  `postal_code` int(11) DEFAULT '0' COMMENT '邮编',
  `qq` varchar(255) DEFAULT '' COMMENT 'qq号',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `source` varchar(255) DEFAULT '' COMMENT '来源',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店id',
  `store_name` varchar(255) DEFAULT '' COMMENT '门店名称',
  `tag` varchar(255) DEFAULT '' COMMENT '标签',
  `wechat` varchar(255) DEFAULT '' COMMENT '微信',
  `weibo` varchar(255) DEFAULT '' COMMENT '微博',
  `is_freezing` int(11) DEFAULT '0' COMMENT '会员状态。1：正常；2：冻结',
  `is_potential` int(11) DEFAULT '0' COMMENT '是否会员。1：会员；2：潜客',
  `phone_province` varchar(255) DEFAULT '' COMMENT '手机号归属地省份（编码）',
  `phone_city` varchar(255) DEFAULT '' COMMENT '手机号归属地城市（编码）',
  `open_card_time` datetime DEFAULT NULL COMMENT '开卡时间', 
  `belong_department_id` bigint(20) DEFAULT '0' COMMENT '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员基础信息表';

-- ----------------------------
-- Table structure for member_group_info
-- ----------------------------
DROP TABLE IF EXISTS `member_group_info`;
CREATE TABLE `member_group_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父节点id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `status` int(11) DEFAULT '0' COMMENT '分组类型。1：静态分组；2：动态分组',
  `base_attr` varchar(2000) DEFAULT NULL COMMENT '基础属性',
  `trade_attr` varchar(2000) DEFAULT NULL COMMENT '交易属性',
  `rfm_attr` varchar(2000) DEFAULT NULL COMMENT 'RFM属性',
  `tag_attr` varchar(2000) DEFAULT NULL COMMENT '标签属性',
  `count` int(11) DEFAULT '0' COMMENT '分组内会员数',
  `type` int(11) DEFAULT '0' COMMENT '分类和分组的区别。1：分类；2：分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员分组表';

-- ----------------------------
-- Table structure for member_to_group
-- ----------------------------
DROP TABLE IF EXISTS `member_to_group`;
CREATE TABLE `member_to_group` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `group_id` bigint(20) DEFAULT '0' COMMENT '分组id',
  `member_id` bigint(20) DEFAULT '0' COMMENT '会员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员分组映射关系表';

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `order_id` bigint(20) DEFAULT '0' COMMENT '订单id',
  `goods_id` bigint(20) DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `goods_manufacturer` varchar(255) DEFAULT '' COMMENT '生产厂商',
  `goods_units` varchar(255) DEFAULT '' COMMENT '商品规格',
  `purchase_quantity` int(11) DEFAULT '0',
  `unit_price` decimal(10,0) DEFAULT NULL COMMENT '单价(单位分)',
  `discount` decimal(10,0) DEFAULT NULL COMMENT '折扣',
  `discount_price` bigint(20) DEFAULT '0' COMMENT '折后价(单位分)',
  `total_price` bigint(20) DEFAULT '0' COMMENT '总价(单位分)',
  `goods_code` varchar(255) DEFAULT '' COMMENT '货号',
  `contri_amount` bigint(20) DEFAULT '0' COMMENT '分摊价格(单位分)',
  `is_gift` int(11) DEFAULT '0' COMMENT '是否赠品 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单明细表';

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `order_number` varchar(255) DEFAULT '' COMMENT '订单编号',
  `trade_price` bigint(20) DEFAULT '0' COMMENT '订单金额（单位分）',
  `trade_time` datetime DEFAULT NULL COMMENT '交易时间',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店ID',
  `cashier_id` bigint(20) DEFAULT '0' COMMENT '收银员ID',
  `consumer_id` bigint(20) DEFAULT '0' COMMENT '会员ID',
  `consumer_name` varchar(255) DEFAULT '' COMMENT '消费者/会员姓名',
  `consumer_phone` varchar(255) DEFAULT '' COMMENT '消费者/会员电话',
  `pos_receipt_id` bigint(20) DEFAULT '0' COMMENT '消费小票ID',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动ID',
  `pay_cash` bigint(20) DEFAULT '0' COMMENT '现金支付金额（单位分）',
  `pay_coupon` bigint(20) DEFAULT '0' COMMENT '优惠券支付金额（单位分）',
  `pay_balance` bigint(20) DEFAULT '0' COMMENT '余额支付金额（单位分）',
  `pay_credits` bigint(20) DEFAULT '0' COMMENT '积分支付金额（单位分）',
  `pay_type` bigint(20) DEFAULT '0' COMMENT '支付方式；',
  `card_no` varchar(255) DEFAULT '' COMMENT '会员卡号',
  `coupon_code` varchar(255) DEFAULT '' COMMENT '卡卷码',
  `status` int(11) DEFAULT '0' COMMENT '订单状态:0未处理交易1已处理交易2取消交易',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  `trade_no` varchar(255) DEFAULT '' COMMENT '订单流水号',
  `cancel_id` bigint(20) DEFAULT '0' COMMENT '取消操作人ID',
  `is_dispose` int(11) DEFAULT '0' COMMENT '是否已处理',
  `trans_limit` int(11) DEFAULT '0' COMMENT '沉淀额度',
  `finish_time` datetime DEFAULT NULL COMMENT '订单完成时间',
  `adjust_price` int(11) DEFAULT '0' COMMENT '订单调整金额（单位分）',
  `pay_price` int(11) DEFAULT '0' COMMENT '支付金额（单位分）',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `erp_sps_synch` int(11) DEFAULT '0' COMMENT '是否和erp进行过同步 0表示未同步 1表示已同步',
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Table structure for order_pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_pay_detail`;
CREATE TABLE `order_pay_detail` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `order_number` varchar(255) DEFAULT '' COMMENT '订单编号',
  `trade_no` varchar(255) DEFAULT '' COMMENT '交易流水号',
  `return_code` varchar(255) DEFAULT '' COMMENT '返回码',
  `return_msg` varchar(255) DEFAULT '' COMMENT '返回描述',
  `result_code` varchar(255) DEFAULT '' COMMENT '业务码',
  `result_msg` varchar(255) DEFAULT '' COMMENT '业务描述',
  `error_code` varchar(255) DEFAULT '' COMMENT '错误码',
  `error_msg` varchar(255) DEFAULT '' COMMENT '错误描述',
  `openid` varchar(32) DEFAULT NULL COMMENT 'OPENID| 微信用户标识',
  `is_subscribe` varchar(10) DEFAULT NULL COMMENT '是否关注',
  `trade_type` varchar(10) DEFAULT NULL COMMENT '交易类型',
  `bank_type` varchar(255) DEFAULT '' COMMENT '付款银行',
  `fee_type` varchar(10) DEFAULT NULL COMMENT '现金类型',
  `total_amount` int(11) DEFAULT '0' COMMENT '交易金额(单位分)',
  `receipt_amount` int(11) DEFAULT '0' COMMENT '实收金额(单位分)',
  `buyer_pay_amount` int(11) DEFAULT '0' COMMENT '买家付款的金额(单位分)',
  `point_amount` int(11) DEFAULT '0' COMMENT '使用积分宝付款的金额(单位分)',
  `invoice_amount` int(11) DEFAULT '0' COMMENT '交易中可给用户开具发票的金额(单位分)',
  `store_id` varchar(255) DEFAULT '' COMMENT '门店ID',
  `store_name` varchar(255) DEFAULT '' COMMENT '门店名称',
  `buyer_user_type` varchar(255) DEFAULT '' COMMENT '购买用户类型',
  `sign` varchar(255) DEFAULT '' COMMENT '签名',
  `sign_type` varchar(255) DEFAULT '' COMMENT '签名类型',
  `pay_time_end` datetime DEFAULT NULL COMMENT '支付完成时间',
  `reverse_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `pay_type` varchar(255) DEFAULT '' COMMENT '支付类型',
  `goods_description` varchar(255) DEFAULT '' COMMENT '商品描述',
  `goods_detail` varchar(255) DEFAULT '' COMMENT '商品详情',
  `trade_state` varchar(255) DEFAULT '' COMMENT '交易状态',
  `buyer_user_id` varchar(255) DEFAULT '' COMMENT '购买用户id',
  `buyer_logon_id` varchar(255) DEFAULT '' COMMENT '用户用户登陆id',
  `undo_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `refund_desc` varchar(255) DEFAULT '' COMMENT '退款描述',
  `refund_no` varchar(255) DEFAULT '' COMMENT '退款编号',
  `refund_id` varchar(255) DEFAULT '' COMMENT '退款id',
  `refund_fee` varchar(255) DEFAULT '' COMMENT '退款金额（单位分）',
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单支付明细';

-- ----------------------------
-- Table structure for qrcode_browse_record
-- ----------------------------
DROP TABLE IF EXISTS `qrcode_browse_record`;
CREATE TABLE `qrcode_browse_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `code_id` bigint(20) DEFAULT '0' COMMENT '二维码id',
  `click_ip` varchar(255) DEFAULT '' COMMENT '点击Ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='二维码浏览表';

-- ----------------------------
-- Table structure for qrcode_info
-- ----------------------------
DROP TABLE IF EXISTS `qrcode_info`;
CREATE TABLE `qrcode_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店id',
  `code_type` int(2) DEFAULT NULL COMMENT '二维码类型：0 自定义链接；1 H5活动',
  `bind_type` int(2) DEFAULT NULL COMMENT '绑定类型：0 门店；1 渠道；2 员工',
  `link_url` varchar(255) DEFAULT '' COMMENT '链接地址',
  `bind_info` varchar(255) DEFAULT '' COMMENT '绑定的信息：员工id、渠道名称',
  `code_info` varchar(255) DEFAULT '' COMMENT '二维码信息',
  `belong_store_id` bigint(20) default '0' comment '所属门店id', 
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='二维码信息';

-- ----------------------------
-- Table structure for sms_daily_statistical
-- ----------------------------
DROP TABLE IF EXISTS `sms_daily_statistical`;
CREATE TABLE `sms_daily_statistical` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `company_name` varchar(255) DEFAULT '' COMMENT '公司名称',
  `batch` bigint(20) DEFAULT '0' COMMENT '短信批id',
  `batch_time` datetime DEFAULT NULL COMMENT '批次时间',
  `name` varchar(255) DEFAULT '' COMMENT '短信批次名称',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `send_num` int(11) DEFAULT '0' COMMENT '总推送',
  `state` varchar(255) DEFAULT '' COMMENT '推送状态',
  `state_num` int(11) DEFAULT '0' COMMENT '推送状态数统计',
  `send_succeed` int(11) DEFAULT '0' COMMENT '成功推送数统计',
  `send_fail` int(11) DEFAULT '0' COMMENT '推送失败数统计',
  `send_return` int(11) DEFAULT '0' COMMENT '未返回数统计',
  `act_browse` int(11) DEFAULT '0' COMMENT '活动浏览量',
  `submit_from` int(11) DEFAULT '0' COMMENT '提交表单量',
  `cancel_num` int(11) DEFAULT '0' COMMENT '核销量',
  `desc` varchar(255) DEFAULT '' COMMENT '推送失败详情',
  `add_phone_num` int(11) DEFAULT '0' COMMENT '按天统计新增会员数',
  `add_phone_sum` int(11) DEFAULT '0' COMMENT '新增会员数',
  `customer_phone` varchar(255) DEFAULT '' COMMENT '手机号',
  `act_browse_sum` int(11) DEFAULT '0' COMMENT '活动点击量累加和',
  `submit_from_sum` int(11) DEFAULT '0' COMMENT '领券量累加和',
  `cancel_sum` int(11) DEFAULT '0' COMMENT '核销量累加和',
  `send_succeed_sum` int(11) DEFAULT '0' COMMENT '成功总计',
  `send_fail_sum` int(11) DEFAULT '0' COMMENT '失败总计',
  `send_return_sum` int(11) DEFAULT '0',
  `touch_of_ rate` varchar(255) DEFAULT '' COMMENT '触达率',
  `click_of_ rate` varchar(255) DEFAULT '' COMMENT '点击转化',
  `coupon_of_ rate` varchar(255) DEFAULT '' COMMENT '领券转化',
  `cancel_of_ rate` varchar(255) DEFAULT '' COMMENT '核销转化',
  `sms_browse` int(11) DEFAULT '0' COMMENT '短信渠道浏览',
  `sms_coupon` int(11) DEFAULT '0' COMMENT '短信渠道领券量',
  `sms_members` int(11) DEFAULT '0' COMMENT '短信渠道新增会员量',
  `weixin_browse` int(11) DEFAULT '0' COMMENT '微信渠道浏览',
  `weixin_coupon` int(11) DEFAULT '0' COMMENT '微信渠道领券',
  `weixin_members` int(11) DEFAULT '0' COMMENT '微信渠道新增会员',
  `qq_browse` int(11) DEFAULT '0' COMMENT 'QQ渠道浏览',
  `qq_coupon` int(11) DEFAULT '0' COMMENT 'QQ渠道领券',
  `qq_members` int(11) DEFAULT '0' COMMENT 'QQ渠道新增会员',
  `mk` int(11) DEFAULT '0' COMMENT '标识',
  `ex_action` varchar(255) DEFAULT '' COMMENT 'COUPON：注券短信报告，SMS短信报告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短信报告表';

-- ----------------------------
-- Table structure for sms_mass_info
-- ----------------------------
DROP TABLE IF EXISTS `sms_mass_info`;
CREATE TABLE `sms_mass_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `autograph` varchar(255) DEFAULT '' COMMENT '短信签名',
  `content` varchar(255) DEFAULT '' COMMENT '短信发送内容',
  `equivalen_num` int(11) DEFAULT '0' COMMENT '短信等值条数',
  `send_time_type` int(11) DEFAULT '0' COMMENT '发送时间类型  0表示立即发送，1表示定时发送',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `tag` varchar(255) DEFAULT '' COMMENT '标签',
  `batch` varchar(255) DEFAULT '' COMMENT '批次号',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `activity_url` varchar(255) DEFAULT '' COMMENT '活动链接',
  `send_status` int(11) DEFAULT '0' COMMENT '派发状态(0未提交审核，1派送成功，2审核中 3派送中 4审核未通过 5派发失败 6审核通过)',
  `send_num` int(11) DEFAULT '0' COMMENT '发送会员数量',
  `send_object_type` int(11) DEFAULT '0' COMMENT '发送对象类型(0全量派发，1分组派发，2导入会员派发) ',
  `groupids` text COMMENT '会员分组id集合,逗号分隔的字符串',
  `non_cause` varchar(1000) DEFAULT NULL COMMENT '审核不通过原因',
  `type` int(11) DEFAULT '0' COMMENT '创建类型(0表示自身创建 1表示自动化营销中创建的)',
  `template_id` bigint(20) DEFAULT '0' COMMENT '自动化营销模板id',
  `belong_department_id` bigint(20) default '0' comment '所属部门id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短信营销批次';

-- ----------------------------
-- Table structure for sms_send_record
-- ----------------------------
DROP TABLE IF EXISTS `sms_send_record`;
CREATE TABLE `sms_send_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `customer_id` bigint(20) DEFAULT '0',
  `customer_phone` varchar(255) DEFAULT '' COMMENT '会员手机号码',
  `content` varchar(2550) DEFAULT NULL COMMENT '短信发送内容',
  `send_type` varchar(255) DEFAULT '' COMMENT '发送类型(coupon表示发送的是优惠券)',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id',
  `batch` int(11) DEFAULT '0' COMMENT '短信群发批次',
  `seq_id` bigint(20) DEFAULT '0' COMMENT '对应亿美SMSID(前5位标记租户信息)',
  `equivalen_num` int(11) DEFAULT '0' COMMENT '短信内容等值条数',
  `custom_sms_id` varchar(255) DEFAULT '' COMMENT '亿美SMSID',
  `desc` varchar(255) DEFAULT '' COMMENT '短信状态描述',
  `extended_code` varchar(255) DEFAULT '' COMMENT '扩展码',
  `receive_time` datetime DEFAULT NULL COMMENT '短信到达时间',
  `submit_time` datetime DEFAULT NULL COMMENT '短信提交时间',
  `sms_id` varchar(255) DEFAULT '' COMMENT '短信消息id',
  `state` varchar(255) DEFAULT '' COMMENT '短信发送状态',
  `coupon_batch` bigint(20) DEFAULT '0' COMMENT '注券批次id',
  `task_id` bigint(20) DEFAULT '0' COMMENT '自动化营销任务id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短信发送记录表';

 

-- ----------------------------
-- Table structure for thirdparty_coupon
-- ----------------------------
DROP TABLE IF EXISTS `thirdparty_coupon`;
CREATE TABLE `thirdparty_coupon` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `coupon_code` varchar(255) DEFAULT '' COMMENT '优惠券码',
  `name` varchar(255) DEFAULT '' COMMENT '优惠券名称',
  `face_value` int(11) DEFAULT '0' COMMENT '面值',
  `limit_price` int(11) DEFAULT '0' COMMENT '优惠券使用最低消费金额',
  `start_time` datetime DEFAULT NULL COMMENT '优惠券有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '优惠券有效期结束结束',
  `status` int(2) DEFAULT '0' COMMENT '优惠券状态 0表示未使用 1表示已使用',
  `model_id` bigint(20) DEFAULT '0' COMMENT '第三方优惠券模板id', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方优惠券码表，对应基于第三方优惠券模板表（third_coupon_model，一对多关系）导入的券码';



-- ----------------------------
-- Table structure for thirdparty_coupon_model
-- ----------------------------
DROP TABLE IF EXISTS `thirdparty_coupon_model`;
CREATE TABLE `thirdparty_coupon_model` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id', 
  `name` varchar(255) DEFAULT '' COMMENT '优惠券名称',
  `face_value` int(11) DEFAULT '0' COMMENT '面值',
  `limit_price` int(11) DEFAULT '0' COMMENT '优惠券使用最低消费金额',
  `start_time` datetime DEFAULT NULL COMMENT '优惠券有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '优惠券有效期结束结束',
  `status` int(2) DEFAULT '0' COMMENT '状态（0未导入 1未派送 2派送中 3派送完毕）', 
  `num` int(11) DEFAULT '0' COMMENT '券数量',
  `notify_status` int(2) DEFAULT '0' COMMENT '是否通知（0表示未通知 1表示已发送通知）', 
  `extra` text COMMENT '附加内容',  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方优惠券模板表，存一条模板';



-- ----------------------------
-- Table structure for auto_market_regular_task
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_regular_task`;
CREATE TABLE `auto_market_regular_task` (
  `id` BIGINT(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` INT(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `execution_time` DATETIME DEFAULT NULL COMMENT '任务执行时间',
  `sms_content` varchar(255) DEFAULT '' COMMENT '发送短信内容',
  `phone` varchar(255) DEFAULT '' COMMENT '发送手机号',
  `task_id` bigint(20) DEFAULT '0' COMMENT '自动化任务id',
  `customer_id` bigint(20) DEFAULT '0' COMMENT '会员id',
  `status` INT(11) DEFAULT '0' COMMENT '执行状态 0未执行 1 已执行',
  `customer_name` varchar(255) DEFAULT '' COMMENT '会员名称',
  `action_id` bigint(20) DEFAULT '0' COMMENT '任务执行动作id',
  `action_type` int(11) DEFAULT '0' COMMENT '自动化任务动作类型1.短信，2.优惠劵，3.医药',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销定时任务表';



-- ----------------------------
-- Table structure for member_report 
-- 会员报告记录表|调用第三方接口，(如：巨牛ERP)所返回的数据将会插入到这张表内，今天请求的是第三方昨天的数据。
-- ----------------------------
DROP TABLE IF EXISTS `member_report`;
CREATE TABLE `member_report` (
  `id` BIGINT(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` INT(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `crm_date` varchar(10) DEFAULT NULL COMMENT '今天请求的是第三方昨天的日期，如： 2018-02-16',
  `store_id` BIGINT(20) DEFAULT '0' COMMENT 'base_store_info表id',
  `store_name` varchar(255) DEFAULT '' COMMENT 'base_store_info表name',
  `create_customer_number` int(11) DEFAULT '0' COMMENT '新增会员',
  `consume_customer_number` int(11) DEFAULT '0' COMMENT '消费会员',
  `balance_customer_number` int(11) DEFAULT '0' COMMENT '储值会员',
  `re_purchase_customer_number` int(11) DEFAULT '0' COMMENT '复购会员',
  `join_customer_number` int(11) DEFAULT '0' COMMENT '参加活动会员',
  `entity_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间，datetime格式',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='会员报告记录表';



-- ----------------------------
-- Table structure for activity_submit_record 
-- 用户参加活动记录表（用户参加一次活动表增加一条记录）
-- ----------------------------
DROP TABLE IF EXISTS `activity_submit_record`;
CREATE TABLE `activity_submit_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `activity_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '活动id',
  `customer_phone` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '会员手机号码',
  `customer_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `customer_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '会员名称',
  `card_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '名片id',
  `channel_type` bigint(20) NOT NULL DEFAULT '0' COMMENT '渠道类型(二维码营销)',
  `coupon_batch` bigint(20) NOT NULL DEFAULT '0' COMMENT '注券批次',
  `sms_batch` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '短信群发批次',
  `task_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '自动化营销任务id',
  `longitude` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '纬度',
  `province_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '省份id',
  `city_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '城市id',
  `area_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '区域id',
  `is_new_flag` int(11) NOT NULL DEFAULT '0' COMMENT '标记会员是否为新会员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户参加活动记录表';


-- ----------------------------
-- Table structure for activity_success_page 
-- 活动参与成功提示页表
-- ----------------------------
DROP TABLE IF EXISTS `activity_success_page`;
CREATE TABLE `activity_success_page` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'activity_base_info表id',
  `success_tip` varchar(255) NOT NULL DEFAULT '' COMMENT '参加活动成功提示文字',
  `success_description` varchar(255) NOT NULL DEFAULT '' COMMENT '参加活动成功描述 ',
  `list_button_text` varchar(255) NOT NULL DEFAULT '' COMMENT '查看优惠券列表按钮的文字提示',
  `is_show_coupon_list` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示查看优惠券按钮标记（0表示不显示 1表示显示）',
  `recommend_activity_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐活动的id集合（，分割）',
  `is_show_recommend_activity` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示推荐活动标记（0不显示 1显示）',
  `is_show_qrcode` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示二维码（0不显示 1显示）',
  `qrcode_tip` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码上方的提示文本',
  `bg_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图片地址',
  `qrcode_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='活动参与成功提示页表';


-- ----------------------------
-- Table structure for business_card_activity 
-- 名片活动关系表
-- ----------------------------
DROP TABLE IF EXISTS `business_card_activity`;
CREATE TABLE `business_card_activity` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'activity_base_info表id',
  `card_id` bigint(20) DEFAULT '0' COMMENT 'business_card_info 表id',
  `type` int(11) DEFAULT '0' COMMENT '用于区分类型（2表示活动 1表示业务）', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='名片活动关系表';



-- ----------------------------
-- Table structure for coupon_banch_browse_record 
-- 批量注券发送短信链接点击浏览记录表
-- ----------------------------
DROP TABLE IF EXISTS `coupon_banch_browse_record`;
CREATE TABLE `coupon_banch_browse_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `customer_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `coupon_batch` bigint(20) NOT NULL DEFAULT '0' COMMENT '短信群发批次',
  `task_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '自动化营销任务id',
  `longitude` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '纬度',
  `province_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '省份id',
  `city_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '城市id',
  `area_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '区域id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='批量注券发送短信链接点击浏览记录表';




-- ----------------------------
-- Table structure for coupon_expire_task 
-- 优惠券到期提醒短信发送任务表（每天定时扫描表，发送提醒短信）
-- ----------------------------
DROP TABLE IF EXISTS `coupon_expire_task`;
CREATE TABLE `coupon_expire_task` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `coupon_batch` bigint(20) DEFAULT '0' COMMENT '注券批次号',
  `customer_id` bigint(20) DEFAULT '0' COMMENT 'member_base_info  表id',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id ',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号码',
  `coupon_code` varchar(20) DEFAULT '' COMMENT '优惠券码',
  `coupon_id` bigint(20) DEFAULT '0' COMMENT '优惠券id',
  `sms_content` varchar(255) DEFAULT '' COMMENT '需要发送的短信内容',
  `status` int(10) DEFAULT '0' COMMENT '任务状态 0未执行  1已执行',
  `execution_time` datetime DEFAULT NULL COMMENT '任务执行时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='优惠券到期提醒短信发送任务表（每天定时扫描表，发送提醒短信）';





-- ----------------------------
-- Table structure for relation_activity_coupon_template 
-- 活动优惠券模板关联表（活动绑定的优惠券模板）
-- ----------------------------
DROP TABLE IF EXISTS `relation_activity_coupon_template`;
CREATE TABLE `relation_activity_coupon_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id（activity_base_info id）',
  `coupon_template_id` bigint(20) DEFAULT '0' COMMENT '优惠券模板id（对应coupon_user_defined_template表id）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='活动优惠券模板关联表';



-- ----------------------------
-- Table structure for relation_activity_store 
-- 活动与门店的关联表
-- ----------------------------
DROP TABLE IF EXISTS `relation_activity_store`;
CREATE TABLE `relation_activity_store` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT '0' COMMENT '公司id',
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动id（activity_base_info id）',
  `store_id` bigint(20) DEFAULT '0' COMMENT '门店id（对应base_store_info表id）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='活动与门店的关联表';



-- ----------------------------
-- Table structure for relation_activity_defined_template_store 
-- 活动自定义模板门店关联表
-- ----------------------------
DROP TABLE IF EXISTS `relation_activity_defined_template_store`;
create table `relation_activity_defined_template_store` (
  `id` bigint(20) not null comment 'mycat生成唯一id',
  `create_time` timestamp null default current_timestamp comment '创建时间',
  `update_time` timestamp null default current_timestamp comment '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' comment '创建人id',
  `delete_time` timestamp null default current_timestamp comment '删除时间',
  `is_deleted` int(11) default '0' comment '删除标记',
  
  `cid` bigint(20) default '0' comment '公司id',
  `template_id` bigint(20) default '0' comment '活动模板id（activity_user_defined_template id）',
  `store_id` bigint(20) default '0' comment '门店id（对应base_store_info表id）',
  primary key (`id`)
) engine=innodb default charset=utf8mb4 row_format=compact comment='活动自定义模板门店关联表';



























































































