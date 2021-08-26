<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
			<table class="table table-hover table-bordered">
				<thead>
					<tr class="table-info">
						<th class="align-middle text-center" >주문구분</th>
						<th class="align-middle text-center" >주문시간</th>
						<th class="align-middle text-center" >주문건수</th>
						<th class="align-middle text-center" >확인건수</th>
						<th class="align-middle text-center" >취소건수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${ord}">
						<tr>
							<td class="align-middle text-center"><a href="javascript:fnSetupdetail('${path}/room/orddetail/${row.ORDDATE2}?CONTRACT_ID=${row.CONTRACT_ID}')">${row.ORDP}</a></td>
							<td class="align-middle text-center">${row.ORD_DATE}</td>
							<td class="align-middle text-right">${row.CORDDATE}</td>
							<td class="align-middle text-right">${row.CCONFDATE}</td>
							<td class="align-middle text-right">${row.CCANCDATE}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>