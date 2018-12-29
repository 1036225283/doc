package com.qzjf.qisudai.weixin;

import com.alibaba.fastjson.JSON;
import com.qzjf.common.thirdpart.weixin.util.TenpayUtil;
import com.qzjf.qisudai.alipay.util.MD5;
import com.qzjf.qisudai.weixin.http.HttpGetUtil;
import org.apache.commons.codec.digest.DigestUtils;

import java.util.*;

/**
 * 微信支付相关操作
 * xws
 * 2018年12月28日16:13:52
 */
public class WeChat {

    /**
     * 小程序根据code获取用户信息
     */

    private String appid;//小程序id
    private String secret;//小程序 appSecret
    private String mch_id;//商户id
    private String mch_key;//商户平台设置的密钥key
    private String notify_url;//微信支付回调url

    public static void main(String[] args) {
        WeChat weChat = new WeChat();
        weChat.setMch_id("123456");
        weChat.setMch_key("123456");
        weChat.setNotify_url("http://www.33.com/callback");
        Map<String, Object> map = weChat.unifiedOrderObject("12345", 300, "192.168.2.31", "2323sdfiosdfoisd");
        System.out.println(map.get("sign"));
        System.out.println(UtilXml.mapToXml(map));
    }


    public Map<String, Object> getSmallInfo(String js_code) {
        String url = "https://api.weixin.qq.com/sns/jscode2session?appid={appid}&secret={secret}&js_code={js_code}&grant_type=authorization_code";
        url = url.replace("{appid}", appid).replace("{secret}", secret).replace("{js_code}", js_code);

        String str = HttpGetUtil.getStringByGet(url);
        Map<String, Object> map = JSON.parseObject(str, Map.class);

        return map;
    }

    //根据小程序code获取用户openid
    public String getSmallOpenId(String jsCode) {
        Map<String, Object> map = getSmallInfo(jsCode);
        if (map == null) {
            return null;
        }

        if (map.containsKey("openid")) {
            return map.get("openid").toString();
        }

        return null;
    }

    //统一下单
    public void unifiedOrder() {
        String url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
        Map<String, Object> map = unifiedOrderObject("", 12, "192.168.23.235", "");
        sign(map);
        String sendXml = UtilXml.objectToXml(map);

//        String resultXml = UtilHttp.noSessionPost("https://api.mch.weixin.qq.com/pay/unifiedorder", sendXml);
//        Map<String, Object> map = UtilXml.xmlToMap(resultXml);
//        String return_code = (String) map.get("return_code");
//        String result_code = (String) map.get("result_code");
//        String prepay_id = (String) map.get("prepay_id");
//        if ("SUCCESS".equals(return_code) && "SUCCESS".equals(result_code)) {
//            return prepay_id;
//        } else {
//            return "fail";
//        }


    }

    //构建统计下单对象
    public Map<String, Object> unifiedOrderObject(String out_trade_no, int total_fee, String spbill_create_ip, String openid) {
        Map<String, Object> map = new HashMap<>();
        map.put("appid", appid);//小程序ID	appid	是	String(32)	wxd678efh567hg6787	微信分配的小程序ID
        map.put("mch_id", mch_id);//商户号	mch_id	是	String(32)	1230000109	微信支付分配的商户号
        map.put("device_info", "");//设备号	device_info	否	String(32)	013467007045764	自定义参数，可以为终端设备号(门店号或收银设备ID)，PC网页或公众号内支付可以传"WEB"
        map.put("nonce_str", nonceStr());//随机字符串	nonce_str	是	String(32)	5K8264ILTKCH16CQ2502SI8ZNMTM67VS	随机字符串，长度要求在32位以内。推荐随机数生成算法
        map.put("sign_type", "MD5");//签名类型	sign_type	否	String(32)	MD5	签名类型，默认为MD5，支持HMAC-SHA256和MD5。
        map.put("body", "奇子向钱");//商品描述	body	是	String(128)	腾讯充值中心-QQ会员充值 商品简单描述，该字段请按照规范传递，具体请见参数规定
        map.put("detail", "");//商品详情	detail	否	String(6000)	 	商品详细描述，对于使用单品优惠的商户，改字段必须按照规范上传，详见“单品优惠参数说明”
        map.put("attach", "");//附加数据	attach	否	String(127)	深圳分店	附加数据，在查询API和支付通知中原样返回，可作为自定义参数使用。
        map.put("out_trade_no", out_trade_no);//商户订单号	out_trade_no	是	String(32)	20150806125346	商户系统内部订单号，要求32个字符内，只能是数字、大小写字母_-|*且在同一个商户号下唯一。详见商户订单号
        map.put("fee_type", "CNY");//标价币种	fee_type	否	String(16)	CNY	符合ISO 4217标准的三位字母代码，默认人民币：CNY，详细列表请参见货币类型
        map.put("total_fee", total_fee);//标价金额	total_fee	是	Int	88	订单总金额，单位为分，详见支付金额
        map.put("spbill_create_ip", spbill_create_ip);//终端IP	spbill_create_ip	是	String(16)	123.12.12.123	APP和H5支付提交用户端ip，Native支付填调用微信支付API的机器IP。
        map.put("time_start", "");//交易起始时间	time_start	否	String(14)	20091225091010	订单生成时间，格式为yyyyMMddHHmmss，如2009年12月25日9点10分10秒表示为20091225091010。其他详见时间规则
        map.put("time_expire", "");//交易结束时间	time_expire	否	String(14)	20091227091010  订单失效时间，格式为yyyyMMddHHmmss，如2009年12月27日9点10分10秒表示为20091227091010。订单失效时间是针对订单号而言的，由于在请求支付的时候有一个必传参数prepay_id只有两小时的有效期，所以在重入时间超过2小时的时候需要重新请求下单接口获取新的prepay_id。其他详见时间规则建议：最短失效时间间隔大于1分钟
        map.put("goods_tag", "");//订单优惠标记	goods_tag	否	String(32)	WXG	订单优惠标记，使用代金券或立减优惠功能时需要的参数，说明详见代金券或立减优惠
        map.put("notify_url", notify_url);//通知地址	notify_url	是	String(256)	http://www.weixin.qq.com/wxpay/pay.php	异步接收微信支付结果通知的回调地址，通知url必须为外网可访问的url，不能携带参数。
        map.put("trade_type", "JSAPI");//交易类型	trade_type	是	String(16)	JSAPI	小程序取值如下：JSAPI，详细说明见参数规定
        map.put("product_id", "");//商品ID	product_id	否	String(32)	12235413214070356458058	trade_type=NATIVE时，此参数必传。此参数为二维码中包含的商品ID，商户自行定义。
        map.put("limit_pay", "");//指定支付方式	limit_pay	否	String(32)	no_credit	上传此参数no_credit--可限制用户不能使用信用卡支付
        map.put("openid", openid);//用户标识	openid	否	String(128)	oUpF8uMuAJO_M2pxb1Q9zNjWeS6o	trade_type=JSAPI，此参数必传，用户在商户appid下的唯一标识。openid如何获取，可参考【获取openid】。
        map.put("receipt", "");//电子发票入口开放标识	receipt	否	String(8)	Y	Y，传入Y时，支付成功消息和支付详情页将出现开票入口。需要在微信支付商户平台或微信公众平台开通电子发票功能，传此字段才可生效
        map.put("scene_info", "");//"store_info" : {"id": "SZTX001","name": "腾大餐厅", "area_code": "440305", "address": "科技园中一路腾讯大厦" }}该字段常用于线下活动时的场景信息上报，支持上报实际门店信息，商户也可以按需求自己上报相关信息。该字段为JSON对象数据，对象格式为{"store_info":{"id": "门店ID","name": "名称","area_code": "编码","address": "地址" }} ，字段详细说明请点击行前的+展开
        map.put("sign", sign(map));//签名	sign	是	String(32)	C380BEC2BFD727A4B6845133519F3AD6	通过签名算法计算得出的签名值，详见签名生成算法
        return map;
    }

    //排序并签名-支付签名
    public String sign(Map<String, Object> map) {
        List<String> list = new ArrayList<String>();

        //移除签名
        if (map.containsKey("sign")) {
            map.remove("sign");
        }

        if (map.containsKey("paySign")) {
            map.remove("paySign");
        }


        // 去除为空的键
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() != null && !entry.getValue().equals("")) {
                list.add(entry.getKey());
            }
        }

        // 获取key数组
        String[] str = new String[list.size()];
        for (int i = 0; i < str.length; i++) {
            str[i] = list.get(i);
        }

        // 进行字典排序
        Arrays.sort(str);
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < str.length; i++) {
            sb.append(str[i] + "=" + map.get(str[i]) + "&");
        }


        // 添加api密钥
        sb.append("key=" + mch_key);

        System.out.println(sb.toString());

        String sign = DigestUtils.md5Hex(sb.toString()).toUpperCase();

        return sign;

    }


    // 小程序二次签名对象
    public Map<String, Object> smallPayObject(String prepay_id) {
        Map<String, Object> map = new HashMap<>();
        map.put("appId", appid);//小程序ID	appId	是	String	wxd678efh567hg6787	微信分配的小程序ID
        map.put("nonceStr", nonceStr());//随机串	nonceStr	是	String	5K8264ILTKCH16CQ2502SI8ZNMTM67VS	随机字符串，不长于32位。推荐随机数生成算法
        map.put("package", "prepay_id=" + prepay_id);//数据包	package	是	String	prepay_id=wx2017033010242291fcfe0db70013231072	统一下单接口返回的 prepay_id 参数值，提交格式如：prepay_id=wx2017033010242291fcfe0db70013231072
        map.put("signType", "MD5");//签名方式	signType	是	String	MD5	签名类型，默认为MD5，支持HMAC-SHA256和MD5。注意此处需与统一下单的签名类型一致
        map.put("timeStamp", new Date().getTime() / 1000);//时间戳	timeStamp	是	String	1490840662	时间戳从1970年1月1日00:00:00至今的秒数,即当前的时间

        String sign = sign(map);
        map.put("paySign", sign);
        return map;
    }

    //生成随机字符串
    public String nonceStr() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public String getMch_id() {
        return mch_id;
    }

    public void setMch_id(String mch_id) {
        this.mch_id = mch_id;
    }

    public String getMch_key() {
        return mch_key;
    }

    public void setMch_key(String mch_key) {
        this.mch_key = mch_key;
    }

    public String getNotify_url() {
        return notify_url;
    }

    public void setNotify_url(String notify_url) {
        this.notify_url = notify_url;
    }
}
