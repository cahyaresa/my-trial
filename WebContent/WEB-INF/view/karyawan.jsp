<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url value="/resources/util/css/bootstrap.min.css" var="bootcss"></spring:url>
<spring:url value="/resources/util/js/bootstrap.min.js" var="bootjs"></spring:url>
<spring:url value="/resources/util/jquery-3.3.1.min.js" var="jq"></spring:url>
<spring:url value="/resources/util/parsley.js" var="parsley"></spring:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="${bootcss}" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css" />


<script type="text/javascript" src="${jq }"></script>
<script type="text/javascript" src="${bootjs }"></script>

<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

</head>
<body>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> 
	<div class="col-lg-12 container-fluid">
		<div style="width: 25%; float: left; padding-right: 20px;">
			tambah data
			<form action="${pageContext.request.contextPath }/karyawan/save"
				method="post">
				<div class="form-group">
					<label for="id-karyawan"></label> <input type="hidden"
						class="form-control" id="id-karyawan" placeholder="id" />
				</div>
				<div class="form-group">
					<label for="nama-depan">Name depan</label> <input type="text"
						class="form-control" id="nama-depan" placeholder="Nama" />
				</div>
				<div class="form-group">
					<label for="nama-belakang">Name belakang</label> <input type="text"
						class="form-control" id="nama-belakang" placeholder="Nama" />
				</div>
				<div class="form-group">
					<label for="id-amanger">id manager</label> <input type="text"
						class="form-control" id="id-manager" placeholder="id manager" />
				</div>
				<div class="form-group">
					<label for="id-departemen">id departemen</label> <input type="text"
						class="form-control" id="id-departemen"
						placeholder="id departemen" />
				</div>
				<div class="form-group">
					<label for="status">status</label> <input type="text"
						class="form-control" id="status" placeholder="status" />
				</div>
				<div class="form-group">
					<input type="button" class="btn btn-primary form-control"
						id="btn-save" value="save" />
				</div>
			</form>
		</div>
		<div
			style="width: 70%; float: right; padding-top: 100px; padding-right: 20px;">
			<table id="data-table1" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead align="center">
					<th>Id</th>
					<th>Nama Karyawan</th>
					<th>Nip</th>
					<th>id manager</th>
					<th>id departemen</th>
					<th>status</th>

				</thead>
				<tbody>
					<c:forEach items="${emps }" var="karyawan">
						<tr>
							<td>${karyawan.id }</td>
							<td>${karyawan.firstName }${karyawan.lastName}</td>
							<td>${karyawan.nip }</td>
							<td>${karyawan.idManager }</td>
							<td>${karyawan.idDepartment }</td>
							<td>${karyawan.status }</td>
							<td><a id="${karyawan.id }" class="del btn btn-danger">
									delete</a> | <a id="${karyawan .id }"
								class="update btn btn-warning"> update</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							//set function save
							$("#btn-save")
									.on(
											'click',
											function() {
												var karyawanBaru = {
													id : $('#id-karyawan')
															.val(),
													firstName : $('#nama-depan')
															.val(),
													lastName : $(
															'#nama-belakang')
															.val(),
													nip : $('#nip').val(),
													idManager : $('#id-manager')
															.val(),
													idDepartment : $(
															'#id-departemen')
															.val(),
													status : $('#status').val(),

												}

												console.log(karyawanBaru);

												$
														.ajax({
															url : '${pageContext.request.contextPath }/karyawan/save',
															type : 'POST',
															data : JSON
																	.stringify(karyawanBaru),
															contentType : 'application/json',

															success : function() {
																alert("berhasil menambah data karyawan");
																window.location = "${pageContext.request.contextPath }/karyawan";
															},
															error : function() {
																alert("gagal menambah karyawan");
															}

														})
											});

							//delete
							$(".del").on('click', function() {
								var id = $(this).attr('id');
								$("#id-delete-emp").val(id);
								alert('deleted');
								//console.log(id);
								//$("#deleteEmp-modal").modal();
							})

							//ajax delete
							$(".del")
									.on(
											'click',
											function() {
												var id = $(this).attr('id');
												console.log(id);
												$
														.ajax({
															url : "${pageContext.request.contextPath}/karyawan/delete/"
																	+ id,
															type : 'GET',

															success : function() {
																alert('deleted');
																window.location = "${pageContext.request.contextPath}/karyawan";
															},
															error : function() {
																alert('fail delete');
															}

														})
											})

							//update
							$(".update")
									.on(
											'click',
											function(evt) {
												evt.preventDefault();
												var id = $(this).attr('id');

												//cek id
												//alert(id);

												$
														.ajax({
															//ambil satu data terpilih berdasar id
															url : '${pageContext.request.contextPath}/pembeli/getone/'
																	+ id,
															type : 'GET',

															success : function(
																	pembeliUpdate) {
																SetUpdateBarang(pembeliUpdate);
																$(
																		'#updatePem-modal')
																		.modal();
															},
															error : function(
																	pembeliUpdate) {
																alert('not updated')
															},
															dataType : 'json'
														});

											});

							//set-up data for update
							function SetUpdateBarang(pembeli) {
								console.log(pembeli);
								$('#update-id').val(pembeli.id), $(
										'#update-namaPem').val(
										pembeli.namaPembeli), $(
										'#update-alamat').val(pembeli.alamat),
										$('#update-no-telepon').val(
												pembeli.noTelepon)
							}

							//btn update click
							$('#btn-update')
									.on(
											'click',
											function() {
												var pembeliUpdate = {
													id : $('#update-id').val(),
													namaPembeli : $(
															'#update-namaPem')
															.val(),
													alamat : $('#update-alamat')
															.val(),
													noTelepon : $(
															'#update-no-telepon')
															.val()
												}

												console.log(pembeliUpdate);
												$
														.ajax({
															url : '${pageContext.request.contextPath}/pembeli/update',
															type : 'POST',
															data : JSON
																	.stringify(pembeliUpdate),
															contentType : 'application/json',
															success : function(
																	pembeliUpdate) {
																alert("update succeess");
																window.location = '${pageContext.request.contextPath}/pembeli';
															},
															error : function() {
																alert("failed to upadte");
															}

														})
											});

						});
	</script>

	
</body>
</html>


