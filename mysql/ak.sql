CREATE TABLE account
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键' AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户ID',
    currency VARCHAR(20) COMMENT '币种',
    available DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '可用',
    locking DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '锁定',
    valuation DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '估值',
    is_del TINYINT(1) DEFAULT '0' COMMENT '是否被删除',
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
);
CREATE TABLE account_address
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户id',
    direction TINYINT(4) COMMENT '交易方向 1:提币,2:充币',
    currency VARCHAR(10) COMMENT '币种',
    is_default TINYINT(4) COMMENT '是否默认地址 1:默认,0:不是默认',
    is_check TINYINT(4) DEFAULT '0' COMMENT '是否免验证 1:是,0:不是',
    remark VARCHAR(32) COMMENT '备注',
    address VARCHAR(32) COMMENT '地址',
    is_del TINYINT(1) DEFAULT '0' NOT NULL COMMENT '是否删除',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间'
);
CREATE TABLE account_agent
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键' AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户ID',
    currency VARCHAR(20) DEFAULT '0' COMMENT '币种',
    available DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '可用',
    locking DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '锁定',
    valuation DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '估值',
    is_del TINYINT(1) DEFAULT '0' COMMENT '是否被删除',
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
);
CREATE TABLE account_agent_flow
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) COMMENT '用户id',
    role_id BIGINT(20) COMMENT '用户级别',
    direction INT(11) COMMENT '交易方向',
    currency VARCHAR(10) COMMENT '币种',
    num DECIMAL(20,8) COMMENT '数量',
    balance DECIMAL(20,8) COMMENT '余额',
    trade_id BIGINT(20) COMMENT '关联交易方ID',
    order_id BIGINT(20) COMMENT '关联订单',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    state INT(11) COMMENT '交易状态:1完成',
    type INT(11) COMMENT '交易类型:1-买入,2-卖出,3-转出至钱包,4-钱包转入,5-转出至法币账户,6-法币账户转入,',
    coin_pair VARCHAR(30) COMMENT '币对',
    charge DECIMAL(20,8) COMMENT '手续费'
);
CREATE TABLE account_alive
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    account_type INT(6) COMMENT '账户类型：1-主账户(划转时我的钱包) 2-币币账户 3-法币账户 4-代理账户',
    is_online TINYINT(2) COMMENT '是否上线：1-上线 2-下线',
    online_time DATETIME COMMENT '上线时间',
    is_del TINYINT(2) DEFAULT '0' COMMENT '是否删除：1-删除 0-在线',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    sort INT(6) COMMENT '顺序'
);
CREATE TABLE account_bcoin
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键' AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户ID',
    currency VARCHAR(20) COMMENT '币种',
    available DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '可用',
    locking DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '锁定',
    valuation DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '估值',
    is_del TINYINT(1) DEFAULT '0' COMMENT '是否被删除',
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
);
CREATE TABLE account_bcoin_flow
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) COMMENT '用户id',
    role_id BIGINT(20) COMMENT '用户级别',
    direction INT(11) COMMENT '交易方向    1-入 0-出',
    currency VARCHAR(10) COMMENT '币种',
    num DECIMAL(20,8) COMMENT '数量',
    balance DECIMAL(20,8) COMMENT '余额',
    trade_id BIGINT(20) COMMENT '关联交易方ID',
    order_id BIGINT(20) COMMENT '关联订单',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    state INT(11) COMMENT '交易状态:1完成',
    type INT(11) COMMENT '交易类型:1-买入,2-卖出,3-转出至钱包,4-钱包转入,5-转出至法币账户,6-法币账户转入,',
    coin_pair VARCHAR(30) COMMENT '币对',
    charge DECIMAL(20,8) COMMENT '手续费',
    side INT(11) COMMENT '0-无,1-maker,2-taker',
    price DECIMAL(20,8) COMMENT '单价'
);
CREATE TABLE account_fcoin
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键' AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户ID',
    currency VARCHAR(20) COMMENT '币种',
    available DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '可用',
    locking DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '锁定',
    valuation DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '估值',
    is_del TINYINT(1) DEFAULT '0' COMMENT '是否被删除',
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
);
CREATE TABLE account_fcoin_flow
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) COMMENT '用户id',
    role_id BIGINT(20) COMMENT '用户级别',
    direction INT(11) COMMENT '交易方向',
    currency VARCHAR(10) COMMENT '币种',
    num DECIMAL(20,8) COMMENT '数量',
    order_id INT(11) COMMENT '关联订单',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    state INT(11) COMMENT '交易状态'
);
CREATE TABLE account_flow
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) COMMENT '用户id',
    role_id BIGINT(20) COMMENT '用户级别',
    direction INT(11) COMMENT '交易方向',
    currency VARCHAR(10) COMMENT '币种',
    num DECIMAL(20,8) COMMENT '数量',
    order_id INT(11) COMMENT '关联订单',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    state INT(11) COMMENT '交易状态',
    side INT(11) COMMENT '0-无,1-maker,2-taker'
);
CREATE TABLE admin
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    username VARCHAR(255),
    password VARCHAR(255),
    nickname VARCHAR(255),
    admin_role_id BIGINT(20),
    state VARCHAR(255),
    head_icon VARCHAR(255),
    mobile VARCHAR(255),
    email VARCHAR(255),
    created DATETIME,
    updated DATETIME
);
CREATE TABLE admin_authority
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    title VARCHAR(255) COMMENT '标题',
    path VARCHAR(255) COMMENT '路径',
    parent_id BIGINT(20) COMMENT '父id',
    created DATETIME,
    updated DATETIME
);
CREATE TABLE admin_log
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    admin_id BIGINT(20) COMMENT '用户id',
    admin_username VARCHAR(255) COMMENT '用户',
    value VARCHAR(255) COMMENT '对象值',
    operation VARCHAR(255) COMMENT '操作',
    operation_obj VARCHAR(255) COMMENT '操作对象',
    created DATETIME,
    updated DATETIME
);
CREATE TABLE admin_role
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    name VARCHAR(255) COMMENT '角色名',
    authorities VARCHAR(255) COMMENT '权限',
    created DATETIME,
    updated DATETIME
);
CREATE TABLE article
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    title VARCHAR(255) COMMENT '标题',
    content VARCHAR(255) COMMENT '详情内容',
    m_content VARCHAR(255) COMMENT '详情内容',
    type INT(11) COMMENT '资讯分类 1-资讯，2-平台公告',
    description VARCHAR(255) COMMENT '摘要',
    thumbnail VARCHAR(255) COMMENT '列表图',
    m_thumbnail VARCHAR(255) COMMENT '列表图',
    img_desc VARCHAR(255) COMMENT '图片描述',
    is_recommend TINYINT(1) COMMENT '是否推荐（是：1   否 0）',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_online TINYINT(1) COMMENT '是否上线',
    online_time DATETIME COMMENT '上线时间',
    previous BIGINT(20) COMMENT '上一个咨询ID',
    previous_title VARCHAR(255) COMMENT '上一条咨询标题',
    next BIGINT(20) COMMENT '下一个咨询ID',
    next_title VARCHAR(255) COMMENT '下一条咨询标题'
);
CREATE TABLE brokerage
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键',
    currency VARCHAR(10) COMMENT '币种：0:全部',
    role_id BIGINT(20) COMMENT '用户角色id：0:全部',
    dealer INT(255) COMMENT '交易角色：0:全部、1:taker、2:maker',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_del TINYINT(1)
);
CREATE TABLE channel
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    username VARCHAR(100) COMMENT '用户名',
    password VARCHAR(255) COMMENT '密码',
    remark VARCHAR(255) COMMENT '备注',
    state INT(255) COMMENT '状态',
    created DATETIME COMMENT '创建时间'
);
CREATE TABLE charge_level
(
    id BIGINT(20),
    charge_level INT(6),
    trade_num INT(20),
    withdraw INT(20),
    put_charge INT(6),
    eat_charge INT(6),
    created DATETIME,
    updated DATETIME
);
CREATE TABLE coin_pair
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    created DATETIME,
    updated DATETIME,
    transaction VARCHAR(10) COMMENT '交易币种',
    valuation VARCHAR(10) COMMENT '计价币种',
    increase INT(11) COMMENT '涨幅',
    state INT(6) COMMENT '状态',
    is_del TINYINT(1) COMMENT '是否删除',
    sort_value INT(11) COMMENT '排序',
    is_online TINYINT(1) DEFAULT '0' NOT NULL COMMENT '是否上线：0下线，1上线',
    online_time DATETIME COMMENT '上线时间'
);
CREATE TABLE coin_price
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    price DECIMAL(20,8) COMMENT '成交价',
    max_price DECIMAL(20,8) COMMENT '24小时最高价',
    min_price DECIMAL(20,8) COMMENT '24小时最低价',
    volume DECIMAL(30,8) COMMENT '成交量',
    last_price DECIMAL(20,8) COMMENT '昨天最后一笔成交价',
    created DATETIME,
    updated DATETIME,
    transaction VARCHAR(10) COMMENT '交易币种',
    valuation VARCHAR(10) COMMENT '计价币种'
);
CREATE TABLE coin_recharge_record
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) COMMENT '用户id',
    direction INT(11) COMMENT '交易方向 1:提币,2:充币',
    currency VARCHAR(10) COMMENT '币种',
    msg VARCHAR(10) COMMENT '描述',
    price DECIMAL(20,8) COMMENT '网络手续费',
    flow_id INT(11) COMMENT '流水号',
    num DECIMAL(20,8) COMMENT '充币数量或者提币数量',
    address VARCHAR(32) COMMENT '充币地址',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_del TINYINT(1) DEFAULT '1' NOT NULL COMMENT '是否删除',
    progress TINYINT(4) COMMENT '充币进度 1:确认中，2:已确认',
    state TINYINT(4) COMMENT '充币状态 1:充币中 2:成功 3:失败  提币状态 5:等待提币 6:撤销中 7:已撤销 8:提现成功 9:提现失败'
);
CREATE TABLE dict
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    remark VARCHAR(255)
);
CREATE TABLE dict_data
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dict_id BIGINT(20),
    name VARCHAR(255),
    value VARCHAR(255),
    seq INT(11)
);
CREATE TABLE feedback
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    work_type INT(11),
    problem_type INT(11)
);
CREATE TABLE invitation
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键',
    inviter_id BIGINT(20) COMMENT '邀请人ID:0为系统',
    invitee_id BIGINT(20) COMMENT '被邀请人ID',
    level INT(11) COMMENT '被邀请人级别',
    referer INT(11) COMMENT '来源',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_del TINYINT(1)
);
CREATE INDEX selectparents_index ON invitation (invitee_id, level);
CREATE TABLE menu_info
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    menu_name VARCHAR(255)
);
CREATE TABLE mq_check
(
    msgId VARCHAR(50) PRIMARY KEY NOT NULL,
    queueId BIGINT(20),
    user_id BIGINT(20),
    created DATETIME,
    updated DATETIME
);
CREATE TABLE order_info
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20) NOT NULL COMMENT '用户ID',
    role_id BIGINT(20) DEFAULT '0' NOT NULL COMMENT '用户级别',
    direction TINYINT(1) NOT NULL COMMENT '订单方向 1-买，0-卖',
    transaction VARCHAR(10) NOT NULL COMMENT '交易币种',
    valuation VARCHAR(10) NOT NULL COMMENT '计价币种',
    price DECIMAL(20,8) NOT NULL COMMENT '交易单价(计价币种)',
    num DECIMAL(20,8) NOT NULL COMMENT '交易数量(交易币种)',
    total_price DECIMAL(20,8) NOT NULL COMMENT '交易总价(计价币种)',
    state INT(11) unsigned zerofill DEFAULT '00000000001' NOT NULL COMMENT '订单状态 1-创建 2-运行中 3-进入撮合 4-完成 5-撤销',
    trade_type INT(11) COMMENT '交易类型：1-币币',
    entrust_type INT(11) NOT NULL COMMENT '委托类型 1-限价订单，2-实时订单',
    is_del TINYINT(1) DEFAULT '1' NOT NULL COMMENT '是否删除',
    created DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    average_price DECIMAL(20,8) DEFAULT '0.00000000' COMMENT '成交均价',
    finish_num DECIMAL(20,8) COMMENT '已完成数量'
);
CREATE TABLE role_info
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    role_name VARCHAR(255)
);
CREATE TABLE role_menu
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    role_id BIGINT(20),
    menu_id BIGINT(20)
);
CREATE TABLE url_list
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    title VARCHAR(255) COMMENT '标题',
    richtext VARCHAR(255) COMMENT '内容',
    url VARCHAR(255) COMMENT '跳转链接',
    pic_url VARCHAR(255) COMMENT '图片地址',
    mrichtext VARCHAR(255) COMMENT '内容',
    murl VARCHAR(255) COMMENT '跳转链接',
    mpic_url VARCHAR(255) COMMENT '图片地址',
    type VARCHAR(255) COMMENT '类别',
    order_num INT(11) COMMENT '排序',
    biz_id BIGINT(20) COMMENT '类别对象id',
    is_online TINYINT(1) COMMENT '是否上线',
    created DATETIME,
    updated DATETIME,
    online_time DATETIME COMMENT '上线时间'
);
CREATE TABLE user
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键',
    phone VARCHAR(45) COMMENT '手机号',
    email VARCHAR(255) COMMENT '邮箱号',
    login_pass VARCHAR(255) COMMENT '登录密码',
    trade_pass VARCHAR(255) COMMENT '交易密码',
    user_type INT(11) COMMENT '用户类型:1-手机，2-邮箱',
    system_code INT(11) COMMENT '系统编号当前默认0',
    referer INT(11) COMMENT '来源',
    area_code INT(11) COMMENT '区域代码',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_del TINYINT(1) COMMENT '是否删除',
    inviter_id BIGINT(20) COMMENT '邀请人ID'
);
CREATE TABLE user_auth
(
    user_id BIGINT(20) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated DATETIME,
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_level INT(6) DEFAULT '1' COMMENT '会员等级',
    phone_valid_flag TINYINT(1) DEFAULT '0' COMMENT '手机验证  1-开  0-关',
    google_flag TINYINT(1) DEFAULT '0' COMMENT '谷歌验证 1-开 0-关',
    email_valid_flag TINYINT(1) DEFAULT '0' COMMENT '邮箱验证 1-开 0-关',
    trade_exist TINYINT(1) DEFAULT '0' COMMENT '资金密码  1-存在  0-不存在',
    trade_pwd_flag TINYINT(1) DEFAULT '0' COMMENT '资金密码验证  1-开  0-关',
    real_name_flag TINYINT(1) DEFAULT '0' COMMENT '实名认证  1-认证 0-未认证',
    face_flag TINYINT(1) DEFAULT '0' COMMENT '人脸认证  1-认证  0-未认证',
    is_del TINYINT(1) DEFAULT '0' COMMENT '是否删除  1-删除  0-未删除',
    video_flag TINYINT(1) DEFAULT '0' COMMENT '视频认证  1-认证  2-未认证',
    card_type INT(6) COMMENT '认证证件类型  1-身份证  2-护照',
    picture_flag TINYINT(1) DEFAULT '0' COMMENT '图片认证  1-认证  0-未认证'
);
CREATE TABLE user_bank_card
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT 'id' AUTO_INCREMENT,
    user_id BIGINT(20) NOT NULL COMMENT '用户id',
    card_no VARCHAR(255) COMMENT '银行卡号',
    bank_name VARCHAR(255) COMMENT '所属银行',
    mobile VARCHAR(20) COMMENT '预留手机号',
    open_bank VARCHAR(255) COMMENT '开户行',
    crad_type VARCHAR(255) COMMENT '银行卡类型',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间'
);
CREATE TABLE user_channel
(
    id BIGINT(20) PRIMARY KEY NOT NULL,
    user_id BIGINT(20),
    created DATETIME,
    updated DATETIME,
    channel_id BIGINT(20),
    source VARCHAR(255)
);
CREATE TABLE user_history
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户id',
    user_phone VARCHAR(20) COMMENT '用户手机',
    medium VARCHAR(20) COMMENT '登录媒介',
    referer VARCHAR(20) COMMENT '来源',
    ip4 VARCHAR(20) COMMENT 'ip 4段地址',
    created DATETIME COMMENT '登录时间',
    login_sign VARCHAR(30) COMMENT '登陆标识，手机号or邮箱'
);
CREATE TABLE user_info
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户ID',
    real_name VARCHAR(80) COMMENT '实名',
    last_name VARCHAR(80) COMMENT '姓氏',
    first_name VARCHAR(80) COMMENT '名字',
    card_type INT(6) COMMENT '证件类型：1-身份证  2-护照',
    id_num VARCHAR(50) COMMENT '身份证号',
    created DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
    birthday CHAR(8) COMMENT '出生年月',
    gender INT(1) COMMENT '性别',
    age INT(6) COMMENT '年龄',
    address VARCHAR(50) COMMENT '地址',
    detail_address VARCHAR(50) COMMENT '详细地址',
    nationality VARCHAR(255) COMMENT '国籍',
    current_country VARCHAR(255) COMMENT '当前居住国家'
);
CREATE TABLE user_like
(
    id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) COMMENT '用户id',
    coin_pair_id BIGINT(20) COMMENT '币对id',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    is_del TINYINT(4) COMMENT '是否删除'
);
CREATE TABLE user_role
(
    id BIGINT(20) PRIMARY KEY NOT NULL COMMENT '主键',
    user_id BIGINT(20) COMMENT '用户ID',
    role_id BIGINT(20) COMMENT '角色ID',
    created DATETIME COMMENT '创建时间',
    updated DATETIME COMMENT '更新时间',
    user_level INT(6) COMMENT '认证级别'
);