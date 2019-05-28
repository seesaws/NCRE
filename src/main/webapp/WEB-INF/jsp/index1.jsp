<%--
  Created by IntelliJ IDEA.
  User: Linran
  Date: 2019/4/29
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring Boot Sample</title>
    <script type="text/javascript">
        var select = document.getElementById("select");
        select.onchange=function(){

        var selvalue = select.value;
        var val = document.getElementById("val");
        switch(selvalue){
            case "大数据与软件工程学院" :

                val.innerHTML="<option value=\"计算机科学与技术(专升本)\">计算机科学与技术(专升本)</option>" +
                "<option value=\"统计学\">统计学</option>" +
                "<option value=\"信息与计算科学(数理金融方向)\">信息与计算科学(数理金融方向)</option>";break;
            case "法学院" : val.innerHTML="<option value=\"电子商务及法律\">电子商务及法律</option>" +
                "<option value=\"法学\">法学</option>";break;
            case "国际学院" : val.innerHTML="<option value=\"法学(创新班)\">法学(创新班)</option>" +
                "<option value=\"国际经济与贸易(2+2国际班)\">国际经济与贸易(2+2国际版)</option>" +
                "<option value=\"国际经济与贸易(创新班)\">国际经济与贸易(创新班)</option>" +
                "<option value=\"金融学(2+2国际班)\">金融学(2+2国际班)</option>" +
                "<option value=\"物流管理(创新班)\">物流管理(创新班)</option>";break;
            case "基础学院经世书院":val.innerHTML="<option value=\"电气工程及其自动化\">电气工程及其自动化</option>" +
                "<option value=\"电子商务\">电子商务</option>" +
                "<option value=\"电子信息工程(本)\">电子信息工程</option>" +
                "<option value=\"工商管理(本)\">工商管理(本)</option>" +
                "<option value=\"机械电子工程\">机械电子工程</option>" +
                "<option value=\"计算机科学与技术\">计算机科学与技术</option>" +
                "<option value=\"市场营销(本)\">市场营销(本)</option>" +
                "<option value=\"通信工程\">通信工程</option>" +
                "<option value=\"物联网工程\">物联网工程</option>" +
                "<option value=\"物流管理\">物流管理</option>";
                break;
            case "基础学院天工书院":val.innerHTML="<option value=\"财务管理\">财务管理</option>" +
                "<option value=\"电子商务及法律\">电子商务及法律</option>" +
                "<option value=\"法学\">法学</option>" +
                "<option value=\"公共事业管理\">公共事业管理</option>" +
                "<option value=\"国际经济与贸易\">国际经济与贸易</option>" +
                "<option value=\"国际商务\">国际商务</option>" +
                "<option value=\"会计学\">会计学</option>" +
                "<option value=\"会展经济与管理\">会展经济与管理</option>" +
                "<option value=\"金融学\">金融学</option>" +
                "<option value=\"统计学\">统计学</option>";
                break;
            case "基础学院艺文书院":val.innerHTML="<option value=\"产品设计\">产品设计</option>" +
                "<option value=\"动画\">动画</option>" +
                "<option value=\"风景园林\">风景园林</option>" +
                "<option value=\"汉语言文学\">汉语言文学</option>" +
                "<option value=\"环境工程\">环境工程</option>" +
                "<option value=\"环境科学\">环境科学</option>" +
                "<option value=\"环境设计\">环境设计</option>" +
                "<option value=\"建筑学\">建筑学</option>" +
                "<option value=\"日语(本)\">日语(本)</option>" +
                "<option value=\"商务英语\">商务英语</option>" +
                "<option value=\"生物工程\">生物工程</option>" +
                "<option value=\"生物技术\">生物技术</option>" +
                "<option value=\"生物制药\">生物制药</option>" +
                "<option value=\"生物制药(单考单招)\">生物制药(单考单招)</option>" +
                "<option value=\"食品科学与工程\">食品科学与工程</option>" +
                "<option value=\"食品科学与工程(单考单招)\">食品科学与工程(单考单招)</option>" +
                "<option value=\"食品质量与安全\">食品质量与安全</option>" +
                "<option value=\"视觉传达设计\">视觉传达设计</option>" +
                "<option value=\"新闻传播学类\">新闻传播学类</option>" +
                "<option value=\"英语(本)\">英语(本)</option>";

                break;
            case "继续教育学院":val.innerHTML="<option value=\"电气与自动化技术\">电气与自动化技术</option>" +
                "<option value=\"电子商务\">电子商务</option>" +
                "<option value=\"工商管理\">工商管理</option>" +
                "<option value=\"计算机应用技术\">计算机应用技术</option>";
                break;
            case "商学院":val.innerHTML="<option value=\"财务管理(专升本)\">财务管理(专升本)</option>" +
                "<option value=\"财务管理\">财务管理</option>" +
                "<option value=\"国际经济与贸易\">国际经济与贸易</option>" +
                "<option value=\"国际商务\">国际商务</option>" +
                "<option value=\"会计学\">会计学</option>" +
                "<option value=\"金融学\">金融学</option>";
                break;
            case "设计艺术与建筑学院":val.innerHTML="<option value=\"产品设计\">产品设计</option>" +
                "<option value=\"动画\">动画</option>" +
                "<option value=\"风景园林\">风景园林</option>" +
                "<option value=\"环境设计\">环境设计</option>" +
                "<option value=\"环境设计(专升本)\">环境设计(专升本)</option>" +
                "<option value=\"建筑学\">建筑学</option>" +
                "<option value=\"视觉传达设计\">视觉传达设计</option>";
                break;
            case "生物与环境学院":val.innerHTML="<option value=\"环境工程\">环境工程</option>" +
                "<option value=\"环境科学\">环境科学</option>\n" +
                "<option value=\"生物制药\">生物制药</option>" +
                "<option value=\"生物制药(单考单招)\">生物制药(单考单招)</option>" +
                "<option value=\"生物制药(专升本)\">生物制药(专升本)</option>" +
                "<option value=\"食品科学与工程\">食品科学与工程</option>" +
                "<option value=\"食品科学与工程(单考单招)\">食品科学与工程(单考单招)</option>" +
                "<option value=\"食品质量与安全\">食品质量与安全</option>";
                break;
            case "外语学院":val.innerHTML="<option value=\"日语(本)\">日语(本)</option>" +
                "<option value=\"商务英语\">商务英语</option>";
                break;
            case "文化与传播学院":val.innerHTML="<option value=\"广告学\">广告学</option>" +
                "<option value=\"汉语言文学\">汉语言文学</option>" +
                "<option value=\"网络与新媒体\">网络与新媒体</option>" +
                "<option value=\"新闻学\">新闻学</option>";
                break;
            case "物流与电子商务学院":val.innerHTML="<option value=\"电子商务\">电子商务</option>" +
                "<option value=\"电子商务(单考单招)\">电子商务(单考单招)</option>" +
                "<option value=\"电子商务(专升本)\">电子商务(专升本)</option>" +
                "<option value=\"工商管理(本)\">工商管理(本)</option>" +
                "<option value=\"工商管理(专升本)\">工商管理(专升本)</option>" +
                "<option value=\"市场营销(本)\">市场营销(本)</option>" +
                "<option value=\"物流管理\">物流管理</option>" +
                "<option value=\"物流管理(专升本)\">物流管理(专升本)</option>" +
                "<option value=\"信息管理与信息系统(本)\">信息管理与信息系统(本)</option>";
                break;
            case "信息与智能工程学院":val.innerHTML="<option value=\"电气工程及其自动化\">电气工程及其自动化</option>" +
                "<option value=\"电气工程及其自动化(专升本)\">电气工程及其自动化(专升本)</option>" +
                "<option value=\"电子信息工程(本)\">电子信息工程(本)</option>" +
                "<option value=\"电子信息工程(专升本)\">电子信息工程(专升本)</option>" +
                "<option value=\"机械电子工程\">机械电子工程</option>" +
                "<option value=\"通信工程\">通信工程</option>" +
                "<option value=\"物联网工程\">物联网工程</option>" +
                "<option value=\"信息工程(金融信息服务与开发)\">信息工程(金融信息服务与开发)</option>";
                break;
            case "中德设计与传播学院":val.innerHTML="<option value=\"广告学2+2\">广告学2+2</option>" +
                "<option value=\"国际经济与贸易(2+2中外双学位)\">国际经济与贸易(2+2中外双学位)</option>" +
                "<option value=\"会展(2+2)\">会展(2+2)</option>" +
                "<option value=\"视觉传达设计(2+2)\">视觉传达设计(2+2)</option>";
                break;

            default : alert("error");
}
};
    </script>
</head>
<body>
<form action="/search" method="post">
    考生姓名：<input type="text" name="name">准考证号：<input type="text" name="zkzh"><br>
    学院<select name="xy" id="select" class="sel">
    <option value="0">请选择</option>
    <option value="大数据与软件工程学院">大数据与软件工程学院</option>
    <option value="法学院">法学院</option>
    <option value="国际学院">国际学院</option>
    <option value="基础学院经世书院">基础学院经世书院</option>
    <option value="基础学院天工书院">基础学院天工书院</option>
    <option value="基础学院艺文书院">基础学院艺文书院</option>
    <option value="继续教育学院">继续教育学院</option>
    <option value="商学院">商学院</option>
    <option value="设计艺术与建筑学院">设计艺术与建筑学院</option>
    <option value="生物与环境学院">生物与环境学院</option>
    <option value="外语学院">外语学院</option>
    <option value="文化与传播学院">文化与传播学院</option>
    <option value="物流与电子商务学院">物流与电子商务学院</option>
    <option value="信息与智能工程学院">信息与智能工程学院</option>
    <option value="中德设计与传播学院">中德设计与传播学院</option>
        </select>
    专业<label for="val"></label><select name="zy" id="val" class="sel">
    <option value="0">请选择</option>
</select>
    班级<label>
    <select name="sclass">
    <option value="英语(本)">英语(本)</option>
    <option value="财务管理173">财务管理173</option>
    <option value="财务管理174">财务管理174</option>
    <option value="财务管理176">财务管理176</option>
    <option value="财务管理1801">财务管理1801</option>
    <option value="财务管理1802">财务管理1802</option>
    <option value="财务管理181">财务管理181</option>
    <option value="财务管理182">财务管理182</option>
    <option value="财务管理183">财务管理183</option>
    <option value="财务管理184">财务管理184</option>
    <option value="财务管理185">财务管理185</option>
    <option value="财务管理186">财务管理186</option>
    <option value="产品设计151">产品设计151</option>
    <option value="产品设计161">产品设计161</option>
    <option value="产品设计162">产品设计162</option>
    <option value="产品设计171">产品设计171</option>
    <option value="产品设计181">产品设计181</option>
    <option value="产品设计182">产品设计182</option>
    <option value="电气151">电气151</option>
    <option value="电气152">电气152</option>
    <option value="电气161">电气161</option>
    <option value="电气162">电气162</option>
    <option value="电气163">电气163</option>
    <option value="电气164">电气164</option>
    <option value="电气171">电气171</option>
    <option value="电气173">电气173</option>
    <option value="电气174">电气174</option>
    <option value="电气180">电气180</option>
    <option value="电气181">电气181</option>
    <option value="电气182">电气182</option>
    <option value="电气183">电气183</option>
    <option value="电商181">电商181</option>
    <option value="电商182">电商182</option>
    <option value="电商183">电商183</option>
    <option value="电商法律171">电商法律171</option>
    <option value="电商法律172">电商法律172</option>
    <option value="电商法律181">电商法律181</option>
    <option value="电子154">电子154</option>
    <option value="电子161">电子161</option>
    <option value="电子1702">电子1702</option>
    <option value="电子171">电子171</option>
    <option value="电子173">电子173</option>
    <option value="电子174">电子174</option>
    <option value="电子180">电子180</option>
    <option value="电子181">电子181</option>
    <option value="电子182">电子182</option>
    <option value="电子183">电子183</option>
    <option value="电子商务（单）16">电子商务（单）16</option>
    <option value="电子商务（单）17">电子商务（单）17</option>
    <option value="电子商务154">电子商务154</option>
    <option value="电子商务155">电子商务155</option>
    <option value="电子商务157">电子商务157</option>
    <option value="电子商务161">电子商务161</option>
    <option value="电子商务162">电子商务162</option>
    <option value="电子商务163">电子商务163</option>
    <option value="电子商务164">电子商务164</option>
    <option value="电子商务165">电子商务165</option>
    <option value="电子商务166">电子商务166</option>
    <option value="电子商务171">电子商务171</option>
    <option value="电子商务173">电子商务173</option>
    <option value="电子商务174">电子商务174</option>
    <option value="电子商务175">电子商务175</option>
    <option value="电子商务176">电子商务176</option>
    <option value="电子商务177">电子商务177</option>
    <option value="电子商务178">电子商务178</option>
    <option value="电子商务1801">电子商务1801</option>
    <option value="电子商务1802">电子商务1802</option>
    <option value="电子商务181">电子商务181</option>
    <option value="电子商务182">电子商务182</option>
    <option value="电子商务183">电子商务183</option>
    <option value="电子商务184">电子商务184</option>
    <option value="电子商务185">电子商务185</option>
    <option value="电子商务186">电子商务186</option>
    <option value="动画172">动画172</option>
    <option value="动画181">动画181</option>
    <option value="动画182">动画182</option>
    <option value="法学（创新班）17">法学（创新班）17</option>
    <option value="法学171">法学171</option>
    <option value="法学174">法学174</option>
    <option value="法学176">法学176</option>
    <option value="法学181">法学181</option>
    <option value="法学182">法学182</option>
    <option value="法学183">法学183</option>
    <option value="法学184">法学184</option>
    <option value="法学185">法学185</option>
    <option value="法学186">法学186</option>
    <option value="风景园林151">风景园林151</option>
    <option value="风景园林162">风景园林162</option>
    <option value="风景园林181">风景园林181</option>
    <option value="风景园林182">风景园林182</option>
    <option value="工科181">工科181</option>
    <option value="工商181">工商181</option>
    <option value="工商管理161">工商管理161</option>
    <option value="工商管理171">工商管理171</option>
    <option value="工商管理174">工商管理174</option>
    <option value="工商管理176">工商管理176</option>
    <option value="工商管理1801">工商管理1801</option>
    <option value="工商管理1802">工商管理1802</option>
    <option value="工商管理181">工商管理181</option>
    <option value="工商管理182">工商管理182</option>
    <option value="工商管理183">工商管理183</option>
    <option value="工商管理184">工商管理184</option>
    <option value="工商管理185">工商管理185</option>
    <option value="工商管理186">工商管理186</option>
    <option value="公共管理181">公共管理181</option>
    <option value="公共管理182">公共管理182</option>
    <option value="广告学（2+2）181">广告学（2+2）181</option>
    <option value="广告学（2+2）182">广告学（2+2）182</option>
    <option value="广告学152">广告学152</option>
    <option value="广告学161">广告学161</option>
    <option value="广告学171">广告学171</option>
    <option value="广告学172">广告学172</option>
    <option value="国际贸易154">国际贸易154</option>
    <option value="国际贸易159">国际贸易159</option>
    <option value="国际贸易163">国际贸易163</option>
    <option value="国际贸易171">国际贸易171</option>
    <option value="国际贸易172">国际贸易172</option>
    <option value="国际贸易174">国际贸易174</option>
    <option value="国际贸易177">国际贸易177</option>
    <option value="国际贸易178">国际贸易178</option>
    <option value="国际贸易181">国际贸易181</option>
    <option value="国际贸易182">国际贸易182</option>
    <option value="国际贸易183">国际贸易183</option>
    <option value="国际贸易184">国际贸易184</option>
    <option value="国际贸易185">国际贸易185</option>
    <option value="国际贸易186">国际贸易186</option>
    <option value="国际贸易187">国际贸易187</option>
    <option value="国际贸易188">国际贸易188</option>
    <option value="国际商务162">国际商务162</option>
    <option value="国际商务171">国际商务171</option>
    <option value="国际商务181">国际商务181</option>
    <option value="国际商务182">国际商务182</option>
    <option value="国贸（2+2）18">国贸（2+2）18</option>
    <option value="国贸（2+2国际班）17">国贸（2+2国际班）17</option>
    <option value="国贸（创新班）17">国贸（创新班）17</option>
    <option value="汉语言文学171">汉语言文学171</option>
    <option value="汉语言文学172">汉语言文学172</option>
    <option value="汉语言文学174">汉语言文学174</option>
    <option value="汉语言文学181">汉语言文学181</option>
    <option value="汉语言文学182">汉语言文学182</option>
    <option value="汉语言文学183">汉语言文学183</option>
    <option value="汉语言文学184">汉语言文学184</option>
    <option value="环境工程151">环境工程151</option>
    <option value="环境工程171">环境工程171</option>
    <option value="环境工程181">环境工程181</option>
    <option value="环境工程182">环境工程182</option>
    <option value="环境科学151">环境科学151</option>
    <option value="环境科学162">环境科学162</option>
    <option value="环境科学181">环境科学181</option>
    <option value="环境科学182">环境科学182</option>
    <option value="环境设计153">环境设计153</option>
    <option value="环境设计171">环境设计171</option>
    <option value="环境设计173">环境设计173</option>
    <option value="环境设计180">环境设计180</option>
    <option value="环境设计181">环境设计181</option>
    <option value="环境设计182">环境设计182</option>
    <option value="环境设计183">环境设计183</option>
    <option value="会计学172">会计学172</option>
    <option value="会计学174">会计学174</option>
    <option value="会计学181">会计学181</option>
    <option value="会计学182">会计学182</option>
    <option value="会计学183">会计学183</option>
    <option value="会计学184">会计学184</option>
    <option value="会计学185">会计学185</option>
    <option value="会计学186">会计学186</option>
    <option value="会计学187">会计学187</option>
    <option value="会计学188">会计学188</option>
    <option value="会展(2+2)181">会展(2+2)181</option>
    <option value="会展(2+2)182">会展(2+2)182</option>
    <option value="会展管理18">会展管理18</option>
    <option value="机械电子17">机械电子17</option>
    <option value="机械电子181">机械电子181</option>
    <option value="机械电子182">机械电子182</option>
    <option value="计算机180">计算机180</option>
    <option value="计算机184">计算机184</option>
    <option value="建筑学172">建筑学172</option>
    <option value="建筑学181">建筑学181</option>
    <option value="建筑学182">建筑学182</option>
    <option value="金融学（2+2国际班）17">金融学（2+2国际班）17</option>
    <option value="金融学156">金融学156</option>
    <option value="金融学168">金融学168</option>
    <option value="金融学172">金融学172</option>
    <option value="金融学173">金融学173</option>
    <option value="金融学175">金融学175</option>
    <option value="金融学181">金融学181</option>
    <option value="金融学182">金融学182</option>
    <option value="金融学183">金融学183</option>
    <option value="金融学184">金融学184</option>
    <option value="金融学185">金融学185</option>
    <option value="金融学186">金融学186</option>
    <option value="日语162">日语162</option>
    <option value="日语181">日语181</option>
    <option value="日语182">日语182</option>
    <option value="商务英语162">商务英语162</option>
    <option value="商务英语173">商务英语173</option>
    <option value="商务英语181">商务英语181</option>
    <option value="商务英语182">商务英语182</option>
    <option value="商务英语183">商务英语183</option>
    <option value="商务英语184">商务英语184</option>
    <option value="生物工程151">生物工程151</option>
    <option value="生物工程172">生物工程172</option>
    <option value="生物工程181">生物工程181</option>
    <option value="生物工程182">生物工程182</option>
    <option value="生物技术181">生物技术181</option>
    <option value="生物技术182">生物技术182</option>
    <option value="生物制药（单）16">生物制药（单）16</option>
    <option value="生物制药（单）18">生物制药（单）18</option>
    <option value="生物制药172">生物制药172</option>
    <option value="生物制药1801">生物制药1801</option>
    <option value="生物制药181">生物制药181</option>
    <option value="生物制药182">生物制药182</option>
    <option value="食品科学（单）17">食品科学（单）17</option>
    <option value="食品科学（单）18">食品科学（单）18</option>
    <option value="食品科学152">食品科学152</option>
    <option value="食品科学161">食品科学161</option>
    <option value="食品科学171">食品科学171</option>
    <option value="食品科学181">食品科学181</option>
    <option value="食品质量152">食品质量152</option>
    <option value="食品质量153">食品质量153</option>
    <option value="食品质量161">食品质量161</option>
    <option value="食品质量162">食品质量162</option>
    <option value="食品质量163">食品质量163</option>
    <option value="食品质量181">食品质量181</option>
    <option value="食品质量182">食品质量182</option>
    <option value="市场营销161">市场营销161</option>
    <option value="市场营销162">市场营销162</option>
    <option value="市场营销171">市场营销171</option>
    <option value="市场营销181">市场营销181</option>
    <option value="市场营销182">市场营销182</option>
    <option value="视觉传达161">视觉传达161</option>
    <option value="视觉传达162">视觉传达162</option>
    <option value="视觉传达171">视觉传达171</option>
    <option value="视觉传达172">视觉传达172</option>
    <option value="视觉传达173">视觉传达173</option>
    <option value="视觉传达181">视觉传达181</option>
    <option value="视觉传达182">视觉传达182</option>
    <option value="视觉设计（2+2）181">视觉设计（2+2）181</option>
    <option value="通信161">通信161</option>
    <option value="通信162">通信162</option>
    <option value="通信163">通信163</option>
    <option value="通信164">通信164</option>
    <option value="通信171">通信171</option>
    <option value="通信173">通信173</option>
    <option value="通信174">通信174</option>
    <option value="通信181">通信181</option>
    <option value="通信182">通信182</option>
    <option value="统计学151">统计学151</option>
    <option value="统计学152">统计学152</option>
    <option value="统计学161">统计学161</option>
    <option value="统计学162">统计学162</option>
    <option value="统计学171">统计学171</option>
    <option value="统计学172">统计学172</option>
    <option value="统计学173">统计学173</option>
    <option value="统计学181">统计学181</option>
    <option value="统计学182">统计学182</option>
    <option value="网络与新媒体171">网络与新媒体171</option>
    <option value="物联网163">物联网163</option>
    <option value="物联网171">物联网171</option>
    <option value="物联网172">物联网172</option>
    <option value="物联网181">物联网181</option>
    <option value="物流管理（创新班）17">物流管理（创新班）17</option>
    <option value="物流管理152">物流管理152</option>
    <option value="物流管理155">物流管理155</option>
    <option value="物流管理1701">物流管理1701</option>
    <option value="物流管理171">物流管理171</option>
    <option value="物流管理173">物流管理173</option>
    <option value="物流管理174">物流管理174</option>
    <option value="物流管理175">物流管理175</option>
    <option value="物流管理176">物流管理176</option>
    <option value="物流管理1801">物流管理1801</option>
    <option value="物流管理1802">物流管理1802</option>
    <option value="物流管理181">物流管理181</option>
    <option value="物流管理182">物流管理182</option>
    <option value="物流管理183">物流管理183</option>
    <option value="物流管理184">物流管理184</option>
    <option value="物流管理185">物流管理185</option>
    <option value="物流管理186">物流管理186</option>
    <option value="新媒体162">新媒体162</option>
    <option value="新闻传播类181">新闻传播类181</option>
    <option value="新闻传播类1810">新闻传播类1810</option>
    <option value="新闻传播类182">新闻传播类182</option>
    <option value="新闻传播类183">新闻传播类183</option>
    <option value="新闻传播类184">新闻传播类184</option>
    <option value="新闻传播类185">新闻传播类185</option>
    <option value="新闻传播类186">新闻传播类186</option>
    <option value="新闻传播类187">新闻传播类187</option>
    <option value="新闻传播类188">新闻传播类188</option>
    <option value="新闻传播类189">新闻传播类189</option>
    <option value="新闻学162">新闻学162</option>
    <option value="新闻学171">新闻学171</option>
    <option value="新闻学172">新闻学172</option>
    <option value="信管152">信管152</option>
    <option value="信管161">信管161</option>
    <option value="信管162">信管162</option>
    <option value="信计科学151">信计科学151</option>
    <option value="信计科学152">信计科学152</option>
    <option value="信计科学161">信计科学161</option>
    <option value="信息工程151">信息工程151</option>
    <option value="英语181">英语181</option>
    <option value="英语182">英语182</option>
    <option value="英语183">英语183</option>


</select>
</label>
</form>
</body>
</html>
