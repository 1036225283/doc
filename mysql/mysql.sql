## 日期相加减
set @dt = now();
select date_add(@dt, interval 1 day); -- add 1 day

1.查询自增到哪了
	SELECT auto_increment FROM information_schema.tables where table_schema="User" and table_name="tbUser";
	
2.添加索引
	ALTER TABLE `tbUtilSql` ADD INDEX index_strSql ( `strSql` )


3.mysql 根据特定条件更新
	UPDATE tbStockDay SET dExtent = ( CASE WHEN dOpen > dClose THEN (dOpen - dClose) / dClose * 100 ELSE (dClose - dOpen) / dOpen*100 END ) WHERE strCode = '002222';

4.插入数据根据另外一张表
	insert into tbStockExtend(strCode) select strCode from tbStockInfo;

5.更新数据从另外一种表
	update tbStockExtend  set strBaiduCode = (select strBaiduCode from tbStockInfo where tbStockInfo.strCode = tbStockExtend.strCode);

6.自动更新时间
  updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP