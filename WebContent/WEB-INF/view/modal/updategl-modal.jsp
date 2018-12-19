<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div id="updategl-modal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div>UPDATE GROUPLEADER</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true" style="margin-top: -23px;">&times;</button>
			</div>
			<div class="modal-body">
				<form action="#" method="put">
				<div class="form-group">
					<label for="update-id"></label> <input type="hidden"
						class="form-control" id="update-id" placeholder="id" />
				</div>
				<div class="form-group  ">
					<label for="update-name">Name </label> <input type="text"
						class="form-control" id="update-nama" placeholder="Nama" />
				</div>
				<div class="form-group  ">
					<label for="update-nrp">Nrp</label> <input type="text"
						class="form-control" id="update-nrp" placeholder="nrp" />
				</div>
				<div class="form-group  ">
					<label for="update-departemen"> Departemen </label> <input type="text"
						class="form-control" id="update-departemen" placeholder="departemen" />
				</div>
				<div class="form-group  ">
					<label for="update-posisi">posisi </label> <input type="text"
						class="form-control" id="update-posisi"	placeholder="posisi" />
				</div>
				<div class="form-group  ">
					<label for="update-password">password</label> <input type="text"
						class="form-control" id="update-password" placeholder="password" />
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

