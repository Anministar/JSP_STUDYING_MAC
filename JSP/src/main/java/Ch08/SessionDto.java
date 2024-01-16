package Ch08;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionDto {
	private Map<String, HttpSession> sessionMap;		//userid와 세션정보를 key와 value 형태로 담을꺼임.
	
	
	//toString
	public SessionDto() {
		sessionMap =new HashMap<>();
	}
	//getter and setter
	

 

	public Map<String, HttpSession> getSessionMap() {
		return sessionMap;
	}


	//default 생성자



	

}



