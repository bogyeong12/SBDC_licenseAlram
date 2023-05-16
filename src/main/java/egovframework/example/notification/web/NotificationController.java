package egovframework.example.notification.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.popbill.api.KakaoService;
import com.popbill.api.PopbillException;
import com.popbill.api.kakao.KakaoButton;

@Controller
public class NotificationController {

	@Autowired
    private KakaoService kakaoService;

    @RequestMapping(value = "sendATS.do", method = RequestMethod.GET)
    public String sendATS_one(Model m) {

    	// 팝빌회원 사업자번호
    	String corpNum = "1078153660";

    	// 팝빌회원 아이디
    	String userID = "sbcsc21";

        // 알림톡 템플릿코드
        // 승인된 알림톡 템플릿 코드는 ListATStemplate API, GetATSTemplateMgtURL API, 또는 팝빌사이트에서 확인 가능합니다.
        String templateCode = "021010000105";

        // 발신번호 (팝빌에 등록된 발신번호만 이용가능)
        String senderNum = "0266789000";

        // 알림톡 내용 (최대 1000자)
        String content = "[중소기업유통센터 알림]\n"
        + "제목 : 라이선스 만료 예정 알림 \n"
        + "내용 : 성보경님 라이선스가 날짜에 만료될 예정임을 알려 드립니다. 온라인으로 갱신하거나 견적을 요청해주세요\n"
        + "* 종료일까지 30일 남았습니다. \n"
        ;

        // 대체문자 내용 (최대 2000byte)
        String altContent = "대체문자 내용";

        // 대체문자 전송유형, 공백-미전송, C-알림톡 내용전송, A-대체문자 내용 전송
        String altSendType = "C";

        // 수신번호
        String receiverNum = "01093255618";

        // 수신자명
        String receiverName = "성보경";

        // 예약전송일시, 형태(yyyyMMddHHmmss)
        String sndDT = "";

        // 전송요청번호
        // 파트너가 전송 건에 대해 관리번호를 구성하여 관리하는 경우 사용.
        // 1~36자리로 구성. 영문, 숫자, 하이픈(-), 언더바(_)를 조합하여 팝빌 회원별로 중복되지 않도록 할당.
        String requestNum = "";

        // 알림톡 버튼정보를 템플릿 신청시 기재한 버튼정보와 동일하게 전송하는 경우 null 처리.
        KakaoButton[] btns = null;

        // 알림톡 버튼 URL에 #{템플릿변수}를 기재한경우 템플릿변수 영역을 변경하여 버튼정보 구성
//        KakaoButton[] btns = new KakaoButton[1];
//
//        KakaoButton button = new KakaoButton();
//        button.setN("버튼명"); // 버튼명
//        button.setT("WL"); // 버튼타입
//        button.setU1("https://www.popbill.com"); // 버튼링크1
//        button.setU2("http://test.popbill.com"); // 버튼링크2
//        btns[0] = button;

        try {

            String receiptNum = kakaoService.sendATS(corpNum, templateCode, senderNum, content, altContent,
                altSendType, receiverNum, receiverName, sndDT, userID, requestNum, btns);

            m.addAttribute("Result", receiptNum);

        } catch (PopbillException e) {
            // 예외 발생 시, e.getCode() 로 오류 코드를 확인하고, e.getMessage()로 오류 메시지를 확인합니다.
            System.out.println("오류 코드" + e.getCode());
            System.out.println("오류 메시지" + e.getMessage());
            m.addAttribute("Result", "오류 코드와 메시지를 확인하세요.");
        }

        return "license/response";
    }

}
