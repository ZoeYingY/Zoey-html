package com.oracle.tool.DataTool;

import net.sf.jxls.transformer.XLSTransformer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Map;

/**
 * @author JoeZhou
 */
public class ExcelTool {

    private HttpServletRequest req;
    private HttpServletResponse resp;

    public ExcelTool(HttpServletRequest req, HttpServletResponse resp) {
        this.req = req;
        this.resp = resp;
    }

    /**
     * 下载excel数据文件
     *
     * @param templatePath excel模版路径：告诉我你的excel模板在哪里
     * @param fileName     文件名，需要后缀
     * @param data         excel数据，需要Map格式
     */
    public void download(String templatePath, String fileName, Map<String, Object> data) {
        try {
            templatePath = req.getServletContext().getRealPath(templatePath);
            String excelDirPath = req.getServletContext().getRealPath("/excel");

            // 如果excel文件夹不存在，则创建一个
            File file = new File(excelDirPath);
            if (!file.exists()) {
                boolean mkdirs = file.mkdirs();
                System.out.println(mkdirs);
            }

            // 创建一个xls转换器，用于将数据转换成xls语言，将 [参数2] 按照 [参数1] 的格式转成 [参数3]
            XLSTransformer transformer = new XLSTransformer();
            transformer.transformXLS(templatePath, data, excelDirPath + "/" + fileName);

            // 直接重定向访问要打印的文件可以下载文件，但这种方式无法识别中文，如果是中文，使用IO流下载
            resp.sendRedirect(req.getContextPath() + "/excel/" + fileName);
        } catch (Exception e) {
            System.out.println("转换异常！");
            e.printStackTrace();
        }
    }
}
