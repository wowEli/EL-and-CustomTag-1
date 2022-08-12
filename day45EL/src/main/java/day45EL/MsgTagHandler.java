package day45EL;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MsgTagHandler extends SimpleTagSupport {
	// Support로 끝나는 클래스들은 도와주기 위해 개발된 클래스

	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.println("핸들러 클래스 기반으로 출력하는 메세지!");
	} // 시작태그를 만나면 자동으로 호출되어 수행되는 메서드

}
