<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<style>
.listcont {
	width: 100%;
	height: 100%;
	padding: 20px;
	background: white;
}

.detailcont {
	width: 100%;
	height: 100%;
	padding: 20px;
	background: white;
}

.h-container:after {
	clear: both;
	display: block;
	content: ''
}

.h-container .item {
	float: left;
	width: 20%;
	height: 100%;
	padding: 15px;
	text-align: center;
	background: white;
	border-right: 1px solid #ddd;
}

.h-container .item.cont {
	float: left;
	width: 80%;
	padding: 15px;
	border-right: none;
	text-align: center;
}
</style>
<div class="cnt_wr swcCard">
	<!-- Row start -->
	<div class="row">
		<div class="col-lg-12 col-xl-12">
			<div class="tab-content tabs m-t-20">
				<div class="card-block table-border-style">
					<table class="table  table-bordered nowrap">
						<tbody>
							<tr>
								<th scope="row">계약 목록</th>
							</tr>
						</tbody>
					</table>
					<div class="h-container">
						<div class="item">
							<div class="table-responsive">
								<table class="table table-bordered nowrap">
									<colgroup>
										<col width="25%" />
										<col width="50%" />
										<col width="25%" />
									</colgroup>
									<thead>
										<tr style="text-align: center;">
											<th>분향실</th>
											<th>계약일자</th>
											<th>고인성명</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="row" items="${listcont}">
											<tr>
												<td>${row.FROOM_TITLE}<input type="hidden"
													class="FRMID" value="${row.FROOM_ID}"></td>
												<td class="CONTPERIOD" style="text-align: center;"><a
													href="<c:if test="${row.CONTRACT_ID eq 0 }">#</c:if><c:if test="${row.CONTRACT_ID ne 0 }">javascript:fnSetcontdetail('${path}/cont/settdetail/${row.CONTRACT_ID}?CONT_FROOM_ID=${row.FROOM_ID}')</c:if>">${row.STDATE}<span>
															<br>~
													</span> ${row.EDDATE}
												</a></td>
												<td class="DPNAME" style="text-align: center;">${row.DPERSON_NAME}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="item cont">
							<div id="detailtable" class="detailtable"></div>
						</div>
					</div>
				</div>
				<!-- Row end -->
			</div>
		</div>
	</div>
</div>
<!--계약기본등록-->
<script>
	function fnSetcontdetail(url, data) {
		$("#detailtable").empty();
		$("#detailtable").load(url, data, function() {
			setTimeout(function() {
			}, 500);
		});
	}
</script>