<%@ include file="layout/top.jsp"%>
<!-- tempat naruh java script -->

<script type="text/javascript">
	$(function() {
		$('#data-table').dataTable({
			info : false
		});
		
	});
</script>

<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Tabel <small>Group leader</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>
<section class="content">
<div class="row">
	<div class="col-lg-12 container-fluid">
		<div style="float: left; padding-left:20px; padding-right: 20px;">
			<h6 align="center" style="text-decoration : underline">Tambah data</h6>
			<form action="${pageContext.request.contextPath }/groupleader/save"
				method="post">
				<div class="form-group">
					<label for="id-gl"></label> <input type="hidden"
						class="form-control" id="id-gl" placeholder="id" />
				</div>
				<div class="form-group col-lg-3 col-md-4 col-sm-6">
					<label for="name-gl">Name </label> <input type="text"
						class="form-control" id="nama-gl" placeholder="Nama" />
				</div>
				<div class="form-group col-lg-3 col-md-4 col-sm-6">
					<label for="nrp">Nrp</label> <input type="text"
						class="form-control" id="nrp" placeholder="nrp" />
				</div>
				<div class="form-group col-lg-3 col-md-4 col-sm-6">
					<label for="id-departmen"> Departemen </label> <input type="text"
						class="form-control" id="id-departemen" placeholder="id-departemen" />
				</div>
				<div class="form-group col-lg-3 col-md-4 col-sm-6">
					<label for="posisi">posisi </label> <input type="text"
						class="form-control" id="posisi"
						placeholder="id departemen" />
				</div>
				<div class="form-group col-lg-3 col-md-4 col-sm-6">
					<label for="password">password</label> <input type="text"
						class="form-control" id="password" placeholder="password" />
				</div>
				<div class="form-group col-lg-4" style="float : right; padding-top: 20px;">
				
					<input type="button" class="btn btn-primary form-control"
						id="btn-save" value="save" />
				</div>
			</form>
		</div>
	</div>
</div>

</section>



<!-- Main content -->
<section class="content">
          <div class="row">
            <div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Data Group Leader</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="row" style="width = 100%">
						<div class="col-sm-12">
							<table id="data-table" class="table table-bordered table-striped dataTable">
								<thead align="center">
									<tr role="row">
										<th>Id</th>
										<th>Nama</th>
										<th>Nrp</th>
										<th>departemen</th>
										<th>posisi</th>
										<th>Password</th>
										<th></th>
								</thead>
								<tbody>
									<c:forEach items="${gls }" var="gls">
										<tr>
											<td>${gls.id }</td>
											<td>${gls.namaGl }</td>
											<td>${gls.nrpGl }</td>
											<td>${gls.deptGl }</td>
											<td>${gls.posisiGl }</td>
											<td>${gls.password }</td>
											<td  align="center"><a id="${gls.id }" class="del btn btn-danger">
													delete</a> | <a id="${gls.id }" class="update btn btn-warning">
													update</a></td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr role="row">
										<th>Id</th>
										<th>Nama</th>
										<th>Nrp</th>
										<th>departemen</th>
										<th>posisi</th>
										<th>Password</th>
										<th></th>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
			</div>
</div>
</section>
 
 
<script type="text/javascript">
		$(document).ready(function(){		
						//set function save
						$("#btn-save").on('click', function() {	
							var groupleaderBaru = {
												id : $('#id-gl').val(),
												namaGl : $('#nama-gl').val(),
												nrpGl : $('#nrp').val(),
												posisiGl : $('#posisi').val(),
												deptGl : $('#id-departemen').val(),
												password : $('#password').val(),
											}
						console.log(groupleaderBaru);
						$.ajax({
							url : '${pageContext.request.contextPath }/groupleader/save',
							type : 'POST',
							data : JSON.stringify(groupleaderBaru),
							contentType : 'application/json',
							success : function() {
								alert("berhasil menambah data groupleader");
								window.location = "${pageContext.request.contextPath }/groupleader";
								},
								error : function() {
									alert("gagal menambah groupleader");
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
			$(".del").on('click',function() {
					var id = $(this).attr('id');
					console.log(id);
				$.ajax({
					url : "${pageContext.request.contextPath}/groupleader/delete/"+ id,
						type : 'GET',
						success : function() {
							alert('deleted');
							window.location = "${pageContext.request.contextPath}/groupleader";
							},
						error : function() {
							alert('fail delete');
							}
						})
			})

			//update
			$(".update").on('click',function(evt) {
					evt.preventDefault();
					var id = $(this).attr('id');
					//cek id
					alert(id);
					
					$.ajax({
						
					//ambil satu data terpilih berdasar id
					url : '${pageContext.request.contextPath}/groupleader/getone/'+ id,
					type : 'GET',
					success : function(glupdate) {
						SetUpdateGroupleader(glupdate);
						$('#updategl-modal').modal();
					},
					error : function(glUpdate) {
						alert('not updated')
						},
					dataType : 'json'
							});
			});

						//set-up data for update
						function SetUpdateGroupleader(groupleader) {
							console.log(groupleader);
							$('#update-id').val(groupleader.id),
							$('#update-nama').val(groupleader.namaGl), 
							$('#update-nrp').val(groupleader.nrpGl), 
							$('#update-departemen').val(groupleader.deptGl),
							$('#update-posisi').val(groupleader.posisiGl), 
							$('#update-password').val(groupleader.password)
									
						}

						//btn update click
						$('#btn-update').on('click', function() {
											var glUpdate = {
													id : $('#update-id').val(),
													namaGl :$('#update-nama').val(),
													nrpGl : $('#update-nrp').val(), 
													posisiGl : $('#update-posisi').val(), 
													deptGl : $('#update-departemen').val(),
													password : $('#update-password').val()
									
											}

											console.log(glUpdate);
											$.ajax({
														url : '${pageContext.request.contextPath}/groupleader/update',
														type : 'PUT',
														data : JSON.stringify(glUpdate),
														contentType : 'application/json',
														success : function(glUpdate) {
															alert("update succeess");
															window.location = '${pageContext.request.contextPath}/groupleader';
														},
														error : function() {
															alert("failed to upadte");
														}

													})
										});

					});
</script>

<!-- /.content -->
<%@ include file = "modal/updategl-modal.jsp" %>	
<%@ include file="layout/bottom.jsp"%>