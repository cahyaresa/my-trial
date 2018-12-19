<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="updateperformance-modal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div>UPDATE PERFORMANCE</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true" style="margin-top: -23px;">&times;</button>
			</div>
			<div class="modal-body">
				<form action="#" method="put">
				<div class="form-group">
					<label for="update-id-perform"></label> <input type="hidden"
						class="form-control" id="update-id-perform" placeholder="id" />
				</div>
				<div class="form-group">
					<label for="update-nama-opt">Name </label> <input type="text"
						class="form-control" id="update-nama-opt" placeholder="Nama" />
				</div>
				<div class="form-group">
					<label for="update-nrp-opt">Nrp Opt</label> <input type="text"
						class="form-control" id="update-nrp-opt" placeholder="nrp operator" />
				</div>
				<div class="form-group">
					<label for="update-status"> status </label> <input type="text"
						class="form-control" id="update-status" placeholder="status" />
				</div>
				<div class="form-group">
					<label for="update-departemen"> Departemen </label> <input type="text"
						class="form-control" id="update-departemen" placeholder="departemen" />
				</div>
				<div class="form-group">
					<label for="update-mdr">mdr </label> <input type="text"
						class="form-control" id="update-mdr"
						placeholder="mdr" />
				</div>
				<div class="form-group">
					<label for="update-safety">safety</label> <input type="text"
						class="form-control" id="update-safety" placeholder="safety" />
				</div>
				<div class="form-group">
					<label for="update-discipline">discipline </label> <input type="text"
						class="form-control" id="update-discipline" placeholder="discipline" />
				</div>
				<div class="form-group">
					<label for="update-fpi">fpi</label> <input type="text"
						class="form-control" id="update-fpi" placeholder="fpi" />
				</div>
				<div class="form-group">
					<label for="update-atr-opt"> atropt </label> <input type="text"
						class="form-control" id="update-atr-opt" placeholder="atr-opt" />
				</div>
				<div class="form-group">
					<label for="update-prodty"> prodty </label> <input type="text"
						class="form-control" id="update-prodty" placeholder="prodty" />
				</div>
				<div class="form-group">
					<label for="update-izin"> izin </label> <input type="text"
						class="form-control" id="update-izin" placeholder="izin" />
				</div>
				<div class="form-group">
					<label for="update-sakit">sakit </label> <input type="text"
						class="form-control" id="update-sakit"
						placeholder="sakit" />
				</div>
				<div class="form-group">
					<label for="update-aplha">alpha</label> <input type="text"
						class="form-control" id="update-alpha" placeholder="alpha" />
				</div>
				<div class="form-group">
					<label for="update-nama-groupleader">nama Group Leader</label> 
					<select class="form-control" id="update-nama-groupleader" required>
						<c:forEach var="gls" items="${gle}">
							<option value="${gls.id}">${gls.namaGl}</option>
						</c:forEach>
					</select>
				</div>
				</form>
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
				<button id="btn-update" type="button" class="btn btn-primary">Update</button>
			</div>
		</div>
	</div>
</div>

