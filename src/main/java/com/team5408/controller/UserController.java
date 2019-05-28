package com.team5408.controller;

import ch.qos.logback.core.util.FileUtil;
import com.team5408.dao.WordUtil;
import com.team5408.entity.User;
import com.team5408.service.UserService;
import freemarker.template.Template;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    private FreeMarkerConfigurer freeMarkerConfigurer;

    @RequestMapping("/list")
    public ModelAndView list(Model model) throws Exception{
        List<User> list=userService.selectAllUser();
        model.addAttribute("userList",list);
        return new ModelAndView("list");
    }

    @RequestMapping("/index")
    public ModelAndView index() {

        return new ModelAndView("query");
    }
    @RequestMapping("/print")
    public ModelAndView print() {

        return new ModelAndView("print");
    }
    @RequestMapping("/printInfo")
    public ModelAndView printInfo(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<User> banji=userService.findByZhuanye();
        List<User> zy=userService.findByZy();
        List<User> yx=userService.findByXueyuan();
        String bj=request.getParameter("sclass");
        String Zhuanye=request.getParameter("selZy");
        String Xueyuan=request.getParameter("selYx");
        System.out.print(Xueyuan+"--"+Zhuanye+"--"+bj+"\n");

        if (bj != "0"&&bj!=null&&!bj.equals("0")) {
            List<User> bjuser = userService.findByBanji(bj);
            model.addAttribute("userList", bjuser);
        }
        if(Zhuanye!="0"&&Zhuanye!=null&&!Zhuanye.equals("0")){
            List<User> zyuser = userService.findUserByZhuanye(Zhuanye);
            model.addAttribute("userList", zyuser);
        }
        if(Xueyuan!="0"&&Xueyuan!=null&&!Xueyuan.equals("0")){
            List<User> yxuser = userService.findUserByXuyaun(Xueyuan);
            model.addAttribute("userList", yxuser);
        }

        model.addAttribute("AllSclass",banji);
        model.addAttribute("AllZy",zy);
        model.addAttribute("AllYx",yx);


        return new ModelAndView("printInfo");
    }
    @RequestMapping("/querylist")
    public ModelAndView queryUserInfo(Model model,HttpServletRequest request) {
        String xh=request.getParameter("xh");
        if(xh!=null) {
            User user = (User) userService.findByNo(xh);
            model.addAttribute("user", user);
        }
        String zkzh=request.getParameter("zkzh");
        if(zkzh!=null){
            User user = (User) userService.findByZkzh(zkzh);
            model.addAttribute("user", user);
        }

        return new ModelAndView("queryInfo");
    }
    @RequestMapping("/queryByName")
    public ModelAndView queryByName(Model model,HttpServletRequest request){
        String name=request.getParameter("name");
        if(name!=null) {
            List<User> user=userService.findByName(name);
            model.addAttribute("userList",user);
        }
        return new ModelAndView("list");
    }
    @RequestMapping("/Login")
    public String Login(HttpServletRequest request){
        String username=request.getParameter("username");
        return "Login";
    }
    @RequestMapping("/all")
    public List<User> all(Model model){
        List<User> list=userService.selectAllUser();
        model.addAttribute("user",list);
        return userService.selectAllUser();
    }
    @RequestMapping("/keyindex")
    public String keyindex(HttpServletRequest request){
        String keyindex=request.getParameter("");
        return "";
    }
//    @SuppressWarnings("serial")
//    public class WordAction {
//
//        private String filePath; //文件路径
//        private String fileName; //文件名称
//        private String fileOnlyName; //文件唯一名称
//
//
//        public String createWord() {
//            /** 用于组装word页面需要的数据 */
//            Map<String, Object> dataMap = new HashMap<>();
//
//            /** 组装数据 */
//            dataMap.put("userName", "seawater");
//
//            dataMap.put("content", "freeMark生成Word文档段落内容");
//
//            List<Map<String, Object>> listInfo = new ArrayList<Map<String, Object>>();
//            for (int i = 1; i <= 10; i++) {
//                Map<String, Object> map = new HashMap<String, Object>();
//                map.put("title", "标题" + i);
//                map.put("content", "内容" + i);
//                map.put("author", "作者" + i);
//                listInfo.add(map);
//            }
//            dataMap.put("listInfo", listInfo);
//
//            /** 文件名称，唯一字符串 */
//            Random r = new Random();
//
//            StringBuffer sb = new StringBuffer();
//
//            sb.append("_");
//            sb.append(r.nextInt(100));
//
//            //文件路径
//            filePath = "D:/doc_f/";
//
//            //文件唯一名称
//            fileOnlyName = "用freemarker生成Word文档_" + sb + ".doc";
//
//            //文件名称
//            fileName = "用freemarker生成Word文档.doc";
//
//            /** 生成word */
//            WordUtil.createWord(dataMap, "djks.ftl", filePath, fileOnlyName);
//
//            return "createWordSuccess";
//        }
//
//
//        /**
//         *
//         * 下载生成的word文档
//         */
//        public String dowloadWord() {
//            /** 先判断文件是否已生成  */
//            try {
//                //解决中文乱码
//                filePath = URLDecoder.decode(filePath, "UTF-8");
//                fileOnlyName = URLDecoder.decode(fileOnlyName, "UTF-8");
//                fileName = URLDecoder.decode(fileName, "UTF-8");
//
//                //如果文件不存在，则会跳入异常，然后可以进行异常处理
//                new FileInputStream(filePath + File.separator + fileOnlyName);
//            } catch (Exception e) {
//                e.printStackTrace();
//                return "error";
//            }
//            return "dowloadWord";
//        }
//
//        /**
//         * 返回最终生成的word文档 文件流
//         * 下载生成的word文档
//         */
//        public InputStream getWordFile() {
//            try {
//                //解决中文乱码
//                fileName = URLDecoder.decode(fileName, "UTF-8");
//
//                /** 返回最终生成的word文件流  */
//                return new FileInputStream(filePath + File.separator + fileOnlyName);
//            } catch (Exception e) {
//                e.printStackTrace();
//                return null;
//            }
//        }
//
//
//        public String getFilePath() {
//            return filePath;
//        }
//
//
//        public void setFilePath(String filePath) {
//            this.filePath = filePath;
//        }
//
//
//        public String getFileName() {
//            return fileName;
//        }
//
//
//        public void setFileName(String fileName) {
//            this.fileName = fileName;
//        }
//
//
//        public String getFileOnlyName() {
//            return fileOnlyName;
//        }
//
//
//        public void setFileOnlyName(String fileOnlyName) {
//            this.fileOnlyName = fileOnlyName;
//        }
//    }
    // 处理下载word文档
//    @RequestMapping("/download")
//    public void download(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        // 告诉浏览器用什么软件可以打开此文件
//        response.setHeader("content-Type", "application/msword");
//        // 下载文件的默认名称
//        response.setHeader("Content-Disposition", "attachment;filename=xx.doc");
//        freeMarkerConfigurer.getConfiguration().setClassForTemplateLoading(getClass(), "/");
//        Template template = freeMarkerConfigurer.getConfiguration().getTemplate("djks.ftl");
//
//        String webapp = request.getServletContext().getRealPath("/");
//
//        List<User> list = userService.selectAllUser();
//        for (int i = 0; i < list.size(); i++) {
//            User user = list.get(i);
//            File file = new File(webapp);
//            FileInputStream fis = new FileInputStream(file);
//            byte[] imgData = new byte[fis.available()];
//            fis.read(imgData);
//            fis.close();
//        }
//        Map<String, Object> root = new HashMap<String, Object>();
//        root.put("list", list);
//        template.process(root, new OutputStreamWriter(response.getOutputStream()));
//    }
//    @RequestMapping("/export")
//    public void export(HttpServletRequest request, HttpServletResponse response){
//        Map<String,Object> params = new HashMap<>();
//        params.put("title","这是标题");
//        params.put("name","李四");
//        //一行代码
//        FileUtil.exportWord("word/export.docx","F:/test","aaa.docx",params,request,response);
//    }





}
