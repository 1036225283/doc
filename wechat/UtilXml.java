package com.qzjf.qisudai.weixin;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UtilXml {


    public static void main(String[] args) {
        Map<String, Object> map = new HashMap<>();
        map.put("name", "柚子");
        map.put("price", 400);
        map.put("url", "http://callback.com");

        String xml = mapToXml(map);
        System.out.println(xml);
        Map<String, Object> map1 = xmlToMap(xml);
        System.out.println(map1);


    }

    /**
     * 将xml文件转换为map
     *
     * @param xml
     * @return
     */
    public static Map<String, Object> xmlToMap(String xml) {
        Map<String, Object> map = new HashMap<>();
        SAXReader saxReader = new SAXReader();
        Document document;
        try {
            document = saxReader.read(new ByteArrayInputStream(xml
                    .getBytes("utf-8")));
            Element root = document.getRootElement();
            @SuppressWarnings("unchecked")
            List<Element> elements = root.elements();
            for (Element element : elements) {
                map.put(element.getName(), element.getText());
            }
        } catch (DocumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 将对象转换为xml字符串
     *
     * @param object
     * @return
     */
    public static String objectToXml(Object object) {
        return null;
    }


    //map转化成xml
    public static String mapToXml(Map<String, Object> map) {

        StringBuffer sb = new StringBuffer();
        sb.append("<xml>");

        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() != null && !entry.getValue().equals("")) {

                if (entry.getValue() instanceof String) {
                    sb.append("<" + entry.getKey() + ">");
                    sb.append("<![CDATA["
                            + entry.getValue() + "]]>");
                    sb.append("</" + entry.getKey() + ">");
                } else {
                    sb.append("<" + entry.getKey() + ">");
                    sb.append(entry.getValue());
                    sb.append("</" + entry.getKey() + ">");
                }
            }
        }

        sb.append("</xml>");
        return sb.toString();
    }


}