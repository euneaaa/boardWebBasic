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
<br></br>
    <c:if test="${sessionScope.loginUser!=null}">
    <div>
    <form action="/board/cmt/reg" method="post" class="cmtwrite">
        <input type="hidden" name="iboard" value="${requestScope.detail.iboard}">
        <input style="line-height: 2" type="text" name="ctnt" placeholder="댓글 입력">
        <input type="submit" value="댓글 달기">
    </form>
    </div>
    </c:if>
    <div style="margin-top: 10px"> 댓글 목록
        <table class="cmtTable">
            <colgroup>
                <col>
                <col width="10%">
                <col width="9%">
                <col width="5%">
            </colgroup>
            <c:forEach items="${requestScope.cmtList}" var="item">
                <tr>
                    <td>${item.ctnt}</td>
                    <td>${item.writerNm}</td>
                    <td>${item.rdt}</td>
                    <td>
                        <c:if test="${sessionScope.loginUser.iuser==item.writer}">
                            <button>수정</button>
                            <button onclick="isDelCmt(${requestScope.detail.iboard}, ${item.icmt});">삭제</button>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script src="/res/js/board/detail.js"></script>