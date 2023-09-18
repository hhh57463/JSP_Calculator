import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 사용자가 입력한 값 가져오기
        int x = Integer.parseInt(request.getParameter("x"));
        int y = Integer.parseInt(request.getParameter("y"));
        String operator = request.getParameter("operator");

        int result = 0;

        // 계산 로직 수행
        if (operator.equals("sum")) {
            result = x + y;
        } else if (operator.equals("subtract")) {
            result = x - y;
        } else if (operator.equals("multiply")) {
            result = x * y;
        } else if (operator.equals("divide")) {
            if (y != 0) {
                result = x / y;
            } else {
                // 0으로 나눌 수 없음을 처리
                response.getWriter().println("0으로 나눌 수 없습니다.");
                return;
            }
        }

        // 계산 결과를 request 속성에 저장
        request.setAttribute("result", result);

        // "result.jsp"로 포워딩
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
