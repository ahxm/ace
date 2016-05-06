package com.ace.entity;

import com.ace.util.Const;
import com.ace.util.PageData;
import com.ace.util.Tools;

/**
 * Created by anzhen on 2016/5/5.
 */
public class Page {

    private int pageSize;

    private int totalPage;

    private int total;

    private int currentPage;

    private int currentResult;

    private boolean entityOrField;

    private String pageStr;

    private PageData pd = new PageData();

    public Page() {
        try {
            this.pageSize = Integer.parseInt(Tools.readTxtFile(Const.PAGE));
        } catch (Exception e) {
            this.pageSize = 15;
        }
    }

    public int getTotalPage() {
        if (total % pageSize == 0) {
            totalPage = total / pageSize;
        } else {
            totalPage = total / pageSize + 1;
        }
        return totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getCurrentResult() {

        currentResult = (getCurrentPage() - 1) * getPageSize();
        if (currentResult < 0) {
            currentResult = 0;
        }
        return currentResult;
    }

    public void setCurrentResult(int currentResult) {
        this.currentResult = currentResult;
    }

    public boolean isEntityOrField() {
        return entityOrField;
    }

    public void setEntityOrField(boolean entityOrField) {
        this.entityOrField = entityOrField;
    }

    public String getPageStr() {

        StringBuffer sb = new StringBuffer();
        if (total > 0) {
            sb.append("	<ul>\n");
            if (currentPage == 1) {
                sb.append("	<li><a>共<font color=red>" + total + "</font>条</a></li>\n");
                sb.append("	<li><input type=\"number\" value=\"\" id=\"toGoPage\" style=\"width:50px;text-align:center;float:left\" placeholder=\"页码\"/></li>\n");
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"toTZ();\"  class=\"btn btn-mini btn-success\">跳转</a></li>\n");
                sb.append("	<li><a>首页</a></li>\n");
                sb.append("	<li><a>上页</a></li>\n");
            } else {
                sb.append("	<li><a>共<font color=red>" + total + "</font>条</a></li>\n");
                sb.append("	<li><input type=\"number\" value=\"\" id=\"toGoPage\" style=\"width:50px;text-align:center;float:left\" placeholder=\"页码\"/></li>\n");
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"toTZ();\"  class=\"btn btn-mini btn-success\">跳转</a></li>\n");
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"nextPage(1)\">首页</a></li>\n");
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"nextPage(" + (currentPage - 1) + ")\">上页</a></li>\n");
            }
            int showTag = 5;//分页标签显示数量
            int startTag = 1;
            if (currentPage > showTag) {
                startTag = currentPage - 1;
            }
            int endTag = startTag + showTag - 1;
            for (int i = startTag; i <= totalPage && i <= endTag; i++) {
                if (currentPage == i)
                    sb.append("<li><a><font color='#808080'>" + i + "</font></a></li>\n");
                else
                    sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"nextPage(" + i + ")\">" + i + "</a></li>\n");
            }
            if (currentPage == totalPage) {
                sb.append("	<li><a>下页</a></li>\n");
                sb.append("	<li><a>尾页</a></li>\n");
            } else {
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"nextPage(" + (currentPage + 1) + ")\">下页</a></li>\n");
                sb.append("	<li style=\"cursor:pointer;\"><a onclick=\"nextPage(" + totalPage + ")\">尾页</a></li>\n");
            }
            sb.append("	<li><a>第" + currentPage + "页</a></li>\n");
            sb.append("	<li><a>共" + totalPage + "页</a></li>\n");


            sb.append("	<li><select title='显示条数' style=\"width:55px;float:left;\" onchange=\"changeCount(this.value)\">\n");
            sb.append("	<option value='" + pageSize + "'>" + pageSize + "</option>\n");
            sb.append("	<option value='10'>10</option>\n");
            sb.append("	<option value='20'>20</option>\n");
            sb.append("	<option value='30'>30</option>\n");
            sb.append("	<option value='40'>40</option>\n");
            sb.append("	<option value='50'>50</option>\n");
            sb.append("	<option value='60'>60</option>\n");
            sb.append("	<option value='70'>70</option>\n");
            sb.append("	<option value='80'>80</option>\n");
            sb.append("	<option value='90'>90</option>\n");
            sb.append("	<option value='99'>99</option>\n");
            sb.append("	</select>\n");
            sb.append("	</li>\n");


            sb.append("</ul>\n");
            sb.append("<script type=\"text/javascript\">\n");

            //换页函数
            sb.append("function nextPage(page){");
            sb.append(" top.jzts();");
            sb.append("	if(true && document.forms[0]){\n");
            sb.append("		var url = document.forms[0].getAttribute(\"action\");\n");
            sb.append("		if(url.indexOf('?')>-1){url += \"&" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		else{url += \"?" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		url = url + page + \"&" + (entityOrField ? "showCount" : "page.showCount") + "=" + pageSize + "\";\n");
            sb.append("		document.forms[0].action = url;\n");
            sb.append("		document.forms[0].submit();\n");
            sb.append("	}else{\n");
            sb.append("		var url = document.location+'';\n");
            sb.append("		if(url.indexOf('?')>-1){\n");
            sb.append("			if(url.indexOf('currentPage')>-1){\n");
            sb.append("				var reg = /currentPage=\\d*/g;\n");
            sb.append("				url = url.replace(reg,'currentPage=');\n");
            sb.append("			}else{\n");
            sb.append("				url += \"&" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";\n");
            sb.append("			}\n");
            sb.append("		}else{url += \"?" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		url = url + page + \"&" + (entityOrField ? "showCount" : "page.showCount") + "=" + pageSize + "\";\n");
            sb.append("		document.location = url;\n");
            sb.append("	}\n");
            sb.append("}\n");

            //调整每页显示条数
            sb.append("function changeCount(value){");
            sb.append(" top.jzts();");
            sb.append("	if(true && document.forms[0]){\n");
            sb.append("		var url = document.forms[0].getAttribute(\"action\");\n");
            sb.append("		if(url.indexOf('?')>-1){url += \"&" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		else{url += \"?" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		url = url + \"1&" + (entityOrField ? "showCount" : "page.showCount") + "=\"+value;\n");
            sb.append("		document.forms[0].action = url;\n");
            sb.append("		document.forms[0].submit();\n");
            sb.append("	}else{\n");
            sb.append("		var url = document.location+'';\n");
            sb.append("		if(url.indexOf('?')>-1){\n");
            sb.append("			if(url.indexOf('currentPage')>-1){\n");
            sb.append("				var reg = /currentPage=\\d*/g;\n");
            sb.append("				url = url.replace(reg,'currentPage=');\n");
            sb.append("			}else{\n");
            sb.append("				url += \"1&" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";\n");
            sb.append("			}\n");
            sb.append("		}else{url += \"?" + (entityOrField ? "currentPage" : "page.currentPage") + "=\";}\n");
            sb.append("		url = url + \"&" + (entityOrField ? "showCount" : "page.showCount") + "=\"+value;\n");
            sb.append("		document.location = url;\n");
            sb.append("	}\n");
            sb.append("}\n");

            //跳转函数
            sb.append("function toTZ(){");
            sb.append("var toPaggeVlue = document.getElementById(\"toGoPage\").value;");
            sb.append("if(toPaggeVlue == ''){document.getElementById(\"toGoPage\").value=1;return;}");
            sb.append("if(isNaN(Number(toPaggeVlue))){document.getElementById(\"toGoPage\").value=1;return;}");
            sb.append("nextPage(toPaggeVlue);");
            sb.append("}\n");
            sb.append("</script>\n");
        }
        pageStr = sb.toString();
        return pageStr;
    }

    public void setPageStr(String pageStr) {
        this.pageStr = pageStr;
    }

    public PageData getPd() {
        return pd;
    }

    public void setPd(PageData pd) {
        this.pd = pd;
    }
}
