<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
					<div class="cnt_wr">
						<div class="row">
							<div class="col-sm-12">
								<div class="card-block table-border-style">
									<div class="table-responsive">
										<table class="table table-sm bst02">
											<tbody>
												<tr>
													<th scope="row">기본사항</th>
												</tr>
											</tbody>
										</table>
										<table class="table table-sm bst02">
											<tbody>
											<tr>
											<td style="text-align:center">상담일자</td>
											<td style="text-align:center">${cst.CONSULT_DATE}<input type="hidden" value="${cst.CONSULT_ID}" id="consultId"/></td>
											<td></td>
											<td></td>
											</tr>
											<tr>
											<td style="text-align:center">환자성명</td>
											<td style="text-align:center"><input type="text" class="form-control" id="patiName" value="${cst.PATI_NAME}"></td>
											<td style="text-align:center">병원</td>
											<td style="text-align:center"><input type="text" class="form-control" id="hospital" value="${cst.HOSPITAL}"></td>
											</tr>
											<tr>
											<td style="text-align:center">보호자성명</td>
											<td style="text-align:center"><input type="text" class="form-control" id="bfamilyName" value="${cst.BFAMILY_NAME}"></td>
											<td style="text-align:center">연락처</td>
											<td style="text-align:center"><input type="text" class="form-control phone" id="telNo" value="${cst.TEL_NO}" maxlength="13"></td>
											</tr>
											<tr>
											<td style="text-align:center">종교</td>
											<td style="text-align:center">
												<select class="form-control" id="religion">
												<c:forEach var="regc" items="${regioncode}">
													<option value="${regc.BCD_ID}"<c:if test="${cst.RELIGION eq regc.BCD_ID}">selected</c:if>>${regc.BCD_TITLE}</option>
												</c:forEach>
												</select>
											</td>
											<td>화장/매장 구분</td>
													<td>
													<select class="form-control" id="buriYn">
															<option value="1" <c:if test="${cst.BURI_YN eq '1'}">selected</c:if>>화장</option>
															<option value="2" <c:if test="${cst.BURI_YN eq '2'}">selected</c:if>>매장</option>
															<option value="9" <c:if test="${cst.BURI_YN eq '9'}">selected</c:if>>기타</option>
													</select>
													</td>
											</tr>
											<tr>
											<td style="text-align:center">메모</td>
											<td colspan="3"><textarea id="remark"
											rows="4" class="form-control">${cst.REMARK}</textarea>
											</td>
											</tr>
											<tr>
											<td>상담호실</td>
											<td colspan="3">
											<table class="table  table-bordered nowrap"
									id="SltdroomList">
									<colgroup>
										<col width="10%" />
										<col width="10%" />
										<col width="10%" />
										<col width="10%" />
										<col width="10%" />
										<col width="10%" />
										<col width="10%" />
									</colgroup>
									<thead>
										<tr>
											<th class="text-center">호실종류</th>
											<th class="text-center">호실명</th>
											<th class="text-center">일일사용료</th>
											<th class="text-center">시간당사용료</th>
											<th class="text-center">사용일</th>
											<th class="text-center">사용시간</th>
											<th class="text-center">사용요금</th>
											<th style="display:none" class="text-center">선택</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="row" items="${listFroom}">
										<tr>
											<td>분향실</td>
											<td>${row.FROOM_TITLE}<input type="hidden" class = "FRMID" value = "${row.FROOM_ID}"></td>
											<td class = "RMday"style="text-align: right;"><fmt:formatNumber
													value="${row.FROOM_DAY_PRICE}" pattern="#,###" /></td>
											<td class = "RMtime" style="text-align: right;"><fmt:formatNumber
													value="${row.FROOM_TIME_PRICE}" pattern="#,###" /></td>
											<td class = "sRMd" style="text-align: right;">사용일</td>
											<td class = "sRMt" style="text-align: right;">사용시간</td>
											<td class = "sRMcharge" style="text-align: right;"><fmt:formatNumber
													value="" pattern="#,###" /></td>
											<td style="text-align: center; display:none"><input type="checkbox"
												class="CHKsrm form-control" /></td>
										</tr>
									</c:forEach>
									<c:forEach var="row" items="${listEtcroom}">
										<tr>
											<td class="second">부대시설</td>
											<td>${row.FROOM_TITLE}<input type="hidden" class="etcrid"value="${row.FROOM_ID}"></td>
											<td class = "EA" style="text-align: right;"><fmt:formatNumber value="${row.FROOM_DAY_PRICE}" pattern="#,###" /></td>
											<td class = "EB" style="text-align: right;"><fmt:formatNumber value="${row.FROOM_TIME_PRICE}" pattern="#,###" /></td>
											<td style="text-align: right;"><input style="text-align: right"class="form-control Eday" type="number" min="0" max="30" value="0"/></td>
											<td style="text-align: right;"><input style="text-align: right"class="form-control Etime" type="number" min="0" max="30" value="0"/></td>
											<td class = "Esum" style="text-align: right;"><fmt:formatNumber value="0" pattern="#,###" /></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
											</td>
											</tr>
											<c:forEach var="row" items="${setu}">
											<tr>
											<td style="text-align:center">${row.SETUP_TITLE}</td>
											<td colspan="3"><textarea rows="2" style="border: none"class="form-control">${row.SETUP_CONTENTS}</textarea></td>
											</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<div class="btn_wr text-right mt-3">
									<button class="btn btn-md btn-primary"
										onClick="fn_UpdconsultP1()">저장</button>
								</div>
							</div>
						</div>
					</div>
<script>
$('.phone').keydown(function(event) {
    var key = event.charCode || event.keyCode || 0;
    $text = $(this);
    if (key !== 8 && key !== 9) {
        if ($text.val().length === 3) {
            $text.val($text.val() + '-');
        }
        if ($text.val().length === 8) {
            $text.val($text.val() + '-');
        }
    }
    return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));          
	});
	
function chkcalE() {
	var $Aarr = $(".EA");
	var $Barr = $(".EB");
	var $Carr = $(".Eday");
	var $Darr = $(".Etime");
	var $Earr = $(".Esum");
	for (var i = 0; i < $Aarr.length; i++) {
		var chksum = 0;	
		var b1 = Number($Aarr[i].innerText.replace(/[\D\s\._\-]+/g, ""));
		var b2 = Number($Barr[i].innerText.replace(/[\D\s\._\-]+/g, ""));
		var c1 = Number($Carr[i].value);
		var c2 = Number($Darr[i].value);
		chksum = (b1*c1)+(b2*c2);
		$Earr[i].innerText = numberWithCommas(chksum);
	}
}

$(".Eday, .Etime").change(function() {
	chkcalE();
});

	
</script>					