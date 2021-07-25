<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!--제물상/제단 등록-->
<div class="cnt_wr">
	<div class="row">
		<div class="col-sm-12">
			<div class="card-block table-border-style">
				<div class="table-responsive">
					<table class="table table-sm bst02">
						<colgroup>
							<col width="15%" />
							<col width="35%" />
							<col width="15%" />
							<col width="20%" />
							<col width="15%" />
						</colgroup>
						<tbody>
							<tr>
								<th style="text-align:center" scope="row">문구명<input type="hidden" id="setupId" value="${list.SETUP_ID}"></th>
								<td colspan="3"><input type="text" class="form-control" id="setupTitle" value="${list.SETUP_TITLE}" placeholder=""></td>
									<td>
									<button style="text-align:right;" class="btn btn-md btn-success" value="추가" onClick="fn_setNew()">새항목 추가</button>
									</td>
							</tr>
							<tr>
								<th style="text-align:center" scope="row">문구내용</th>
								<td colspan="4"><textarea id="setupContents"
										rows="8" class="form-control">${list.SETUP_CONTENTS}</textarea></td>
							</tr>
							<tr>
								<th style="text-align:center" scope="row">문구설명</th>
								<td colspan="4"><textarea id="setupDesc"
										rows="8" class="form-control">${list.SETUP_DESC}</textarea></td>
							</tr>
							<tr>
								<th style="text-align:center" scope="row">사용여부</th>
								<td><select name="useYn" id="useYn"
									class="form-control form-control-sm">
										<option value="Y" <c:if test="${list.USE_YN eq 'Y'}">selected</c:if>>사용</option>
										<option value="N" <c:if test="${list.USE_YN eq 'N'}">selected</c:if>>미사용</option>
								</select></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<c:if test = "${not empty list.SETUP_ID}">
			<div id="udtbtn">
				<button class="btn btn-md btn-primary " onClick="fn_Updatesetup()">저장</button>
			</div>
			</c:if>
			<c:if test = "${empty list.SETUP_ID}">
			<div id="istbtn">
				<button class="btn btn-md btn-primary " onClick="fn_Insertsetup()">새로 저장</button>
			</div>
			</c:if>
			<br>
		</div>
	</div>
</div>
<style>
	.card-body > div {
		background-size: contain;
		background-repeat: no-repeat;
		width: 100%;
		height: 0;
		padding-top: 66.64%;
	}
</style>
<!--//상품등록-->

	<script>
		$(document).ready(function() {

		});
		

	</script>