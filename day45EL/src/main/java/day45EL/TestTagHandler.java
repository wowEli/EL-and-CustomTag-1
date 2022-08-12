package day45EL;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TestTagHandler extends SimpleTagSupport{
	// 태그 속성을 저장할 멤버변수
	private String border;
	private String bgcolor;

	public String getBorder() {
		return border;
	}

	public void setBorder(String border) {
		this.border = border;
	}

	public String getBgcolor() {
		return bgcolor;
	}

	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}

	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		JspFragment body = getJspBody(); // 상속받은 부모클래스에 있는 메서드인 지 바로 사용가능
		// <jsp:doBody /> 와 같은 기능
		if(body!=null) { // null을 집어넣으면(사용자가 내용을 쓰지않으면) 오류 발생하기 때문에 조건문 설정
			out.println("<H1>"); // 서블릿이 아니기 때문에 out 내장객체가 기본적으로 없음
			body.invoke(null);
			out.println("</H1>");
		}

		out.println("<TABLE border="+this.border+" bgcolor="+this.bgcolor+">");
		for(String v : new Test().getDatas()) {
			out.println("<TR><TD>v</TD></TR>");
		}

		out.println("</TABLE>");

	}


}
