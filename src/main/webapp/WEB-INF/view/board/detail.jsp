<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
    <c:if test="${sessionScope.loginUser.iuser==requestScope.detail.writer}">
    <div>
        <a href="/board/del?iboard=${requestScope.detail.iboard}"><button>삭제</button></a>
        <a href="/board/regmod?iboard=${requestScope.detail.iboard}"><button>수정</button></a>
    </div>
    </c:if>
<div> 번호 ${requestScope.detail.iboard}</div>
<div><b> ${requestScope.detail.title}</b></div>
<div> 작성자 : ${requestScope.detail.writerNm}</div>
<div> ${requestScope.detail.rdt}    조회수 : ${requestScope.detail.hit}</div>
<div> ${requestScope.detail.ctnt}</div>

</div>
