package com.oracle.tool.DataTool;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * @author JoeZhou
 */
@SuppressWarnings("all")
public class DataTool {
    private HashMap map;

    public ArrayList buildData() {
        ArrayList users = new ArrayList();
        users.add(buildChangGui());
        users.add(buildDaJiao());
        users.add(buildFangZheng());
        users.add(buildGuangKun());
        users.add(buildLiuDaNaoDai());
        users.add(buildLiuNeng());
        users.add(buildLaoSiXiFu());
        users.add(buildSongFuGui());
        users.add(buildSongXiaoFeng());
        users.add(buildSongXuLaoNian());
        users.add(buildYuTian());
        users.add(buildZhaoSi());
        return users;
    }

    private Map buildChangGui() {
        map = new HashMap(6);
        map.put("id", "1");
        map.put("name", "长贵");
        map.put("age", "59");
        map.put("gender", "male");
        map.put("info", "前任村长");
        map.put("photo", "cg.jpg");
        return map;
    }

    private Map buildDaJiao() {
        map = new HashMap(6);
        map.put("id", "2");
        map.put("name", "大脚");
        map.put("age", "18");
        map.put("gender", "female");
        map.put("info", "大脚超市");
        map.put("photo", "dj.jpg");
        return map;
    }

    private Map buildFangZheng() {
        map = new HashMap(6);
        map.put("id", "3");
        map.put("name", "方正");
        map.put("age", "30");
        map.put("gender", "male");
        map.put("info", "方方正正");
        map.put("photo", "fz.jpg");
        return map;
    }

    private Map buildGuangKun() {
        map = new HashMap(6);
        map.put("id", "4");
        map.put("name", "广坤");
        map.put("age", "60");
        map.put("gender", "male");
        map.put("info", "广坤山货");
        map.put("photo", "gk.jpg");
        return map;
    }

    private Map buildLiuDaNaoDai() {
        map = new HashMap(6);
        map.put("id", "5");
        map.put("name", "刘大脑袋");
        map.put("age", "33");
        map.put("gender", "male");
        map.put("info", "山庄经理");
        map.put("photo", "ldnd.jpg");
        return map;
    }

    private Map buildLiuNeng() {
        map = new HashMap(6);
        map.put("id", "6");
        map.put("name", "刘能");
        map.put("age", "37");
        map.put("gender", "male");
        map.put("info", "刘英他爹");
        map.put("photo", "ln.jpg");
        return map;
    }

    private Map buildLaoSiXiFu() {
        map = new HashMap(6);
        map.put("id", "7");
        map.put("name", "老四媳妇");
        map.put("age", "19");
        map.put("gender", "female");
        map.put("info", "刘英他妈");
        map.put("photo", "lsxf.jpg");
        return map;
    }

    private Map buildSongFuGui() {
        map = new HashMap(6);
        map.put("id", "8");
        map.put("name", "宋福贵");
        map.put("age", "50");
        map.put("gender", "male");
        map.put("info", "青莲他爹");
        map.put("photo", "sfg.jpg");
        return map;
    }

    private Map buildSongXiaoFeng() {
        map = new HashMap(6);
        map.put("id", "9");
        map.put("name", "宋晓峰");
        map.put("age", "25");
        map.put("gender", "male");
        map.put("info", "青莲对象");
        map.put("photo", "sxf.jpg");
        return map;
    }

    private Map buildSongXuLaoNian() {
        map = new HashMap(6);
        map.put("id", "10");
        map.put("name", "徐老蔫");
        map.put("age", "53");
        map.put("gender", "male");
        map.put("info", "村副主任");
        map.put("photo", "xln.jpg");
        return map;
    }

    private Map buildYuTian() {
        map = new HashMap(6);
        map.put("id", "11");
        map.put("name", "玉田");
        map.put("age", "19");
        map.put("gender", "male");
        map.put("info", "玉田花圃");
        map.put("photo", "yt.jpg");
        return map;
    }

    private Map buildZhaoSi() {
        map = new HashMap(6);
        map.put("id", "12");
        map.put("name", "赵四");
        map.put("age", "51");
        map.put("gender", "male");
        map.put("info", "亚洲舞王");
        map.put("photo", "zs.jpg");
        return map;
    }


}
