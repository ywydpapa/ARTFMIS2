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
	width: 25%;
	height: 100%;
	padding: 15px;
	text-align: center;
	background: white;
	border-right: 1px solid #ddd;
}

.h-container .item.cont {
	float: left;
	width: 75%;
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
					<!-- <table class="table  table-bordered nowrap">
						<tbody>
							<tr>
								<th scope="row">계약 목록</th>
							</tr>
						</tbody>
					</table> -->
					<div class="h-container">
						<div class="item">
							<div style="text-align:center;">
								<h5>계약 목록</h5>
							</div>
							<div class="table-responsive table-bordered">
								<table id="consult_sett_list_table" class="table table-bordered" style="overflow:hidden;">
									<colgroup>
										<col width="25%" />
										<col width="30%" />
										<col width="25%" />
										<col width="20%" />
									</colgroup>
									<thead style="border:1px;">
										<tr style="text-align: center;">
											<th style="text-align: center;">분향실</th>
											<th style="text-align: center;">계약일자</th>
											<th style="text-align: center;">고인성명</th>
											<th style="text-align: center;">정산일자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="row" items="${listcont}">
											<tr>
												<td style="text-align:center;vertical-align:middle;">${row.FROOM_TITLE}<input type="hidden"
													class="FRMID" value="${row.FROOM_ID}"></td>
												<td style="text-align:center;vertical-align:middle;" class="CONTPERIOD" ><a
													href="<c:if test="${row.CONTRACT_ID eq 0 }">#</c:if><c:if test="${row.CONTRACT_ID ne 0 }">javascript:fnSetcontdetail('${path}/cont/settdetail/${row.CONTRACT_ID}?CONT_FROOM_ID=${row.FROOM_ID}')</c:if>">${row.STDATE}<span>
															<br>~
													</span> ${row.EDDATE}
												</a></td>
												<td style="text-align:center;vertical-align:middle;" class="DPNAME">${row.DPERSON_NAME}</td>
												<td style="text-align:center;vertical-align:middle;" class="DPNAME">${row.SETT_DATE}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="item cont" style="padding:0;">
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