package com.it.ssm.utils;

import com.maxmind.geoip2.DatabaseReader;
import com.maxmind.geoip2.model.CityResponse;
import com.maxmind.geoip2.record.*;

import java.io.File;
import java.net.InetAddress;

public class AddressUtils {
    public static String Address(String ip) throws Exception {
        // 创建 GeoLite2 数据库
        File database = new File("E:\\Java\\GeoLite2-City.mmdb");
        // 读取数据库内容
        DatabaseReader reader = new DatabaseReader.Builder(database).build();
        InetAddress ipAddress = InetAddress.getByName(ip);

        // 获取查询结果
        CityResponse response = reader.city(ipAddress);

        // 获取国家信息
        Country country = response.getCountry();
        System.out.println(country.getIsoCode());               // 'CN'
        System.out.println(country.getName());                  // 'China'
        System.out.println(country.getNames().get("zh-CN"));    // '中国'
        String countryCN = country.getNames().get("zh-CN");
        // 获取省份
        Subdivision subdivision = response.getMostSpecificSubdivision();
        System.out.println(subdivision.getName());   // 'Guangxi Zhuangzu Zizhiqu'
        System.out.println(subdivision.getIsoCode()); // '45'
        System.out.println(subdivision.getNames().get("zh-CN")); // '广西壮族自治区'
        String province = subdivision.getNames().get("zh-CN");
        // 获取城市
        City city = response.getCity();
        System.out.println(city.getName()); // 'Nanning'
        Postal postal = response.getPostal();
        System.out.println(postal.getCode()); // 'null'
        System.out.println(city.getNames().get("zh-CN")); // '南宁'
        String cityCN = city.getNames().get("zh-CN");
        Location location = response.getLocation();
        System.out.println(location.getLatitude());  // 22.8167
        System.out.println(location.getLongitude()); // 108.3167
        String address = countryCN + province + cityCN;
        return address;
    }
}

