<%@ include file="layout/top.jsp"%>
<script type="text/javascript">
$(function() {
	$('#data-table').dataTable({
		info : false,
		dom: 'Bfrtip',
        buttons: [
            'csv', 'excel',
        ],
        scrollX: true
	});
});
</script>

<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Tabel <small>Performa Operator</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>
			
<security:authorize access="hasRole('ROLE_ADMINISTRATOR')">  
		<div class="container">
		<section class="content-header">
			<button style="align:center" class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			    Tambah Data
			  </button>
			</section>
			</div>
			




<div class="collapse" id="collapseExample">
  <div class="card card-body">
    <section class="content">
		<div class="row">
			<div class="col-lg-12 container-fluid">
				<div style="float: left; padding-left: 20px; padding-right: 20px;">
					<form action="${pageContext.request.contextPath }/performance/save"
						method="post">
						<div class="form-group">
							<label for="id-perform"></label> <input type="hidden"
								class="form-control" id="id-perform" placeholder="id" />
						</div>
						<div class="form-group col-lg-3">
							<label for="nama-opt">Name </label> <input type="text"
								class="form-control" id="nama-opt" placeholder="Nama" />
						</div>
						<div class="form-group col-lg-3">
							<label for="nrp-opt">Nrp Opt</label> <input type="text"
								class="form-control" id="nrp-opt" placeholder="nrp operator" />
						</div>
						<div class="form-group col-lg-3">
							<label for="status"> status </label> <input type="text"
								class="form-control" id="status" placeholder="status" />
						</div>
						<div class="form-group col-lg-3">
							<label for="departemen"> Departemen </label> <input type="text"
								class="form-control" id="departemen" placeholder="departemen" />
						</div>
						<div class="form-group col-lg-3">
							<label for="mdr">mdr </label> <input type="text"
								class="form-control" id="mdr" placeholder="mdr" />
						</div>
						<div class="form-group col-lg-3">
							<label for="safety">safety</label> <input type="text"
								class="form-control" id="safety" placeholder="safety" />
						</div>
						<div class="form-group col-lg-3">
							<label for="discipline">discipline </label> <input type="text"
								class="form-control" id="discipline" placeholder="discipline" />
						</div>
						<div class="form-group col-lg-3">
							<label for="fpi">fpi</label> <input type="text"
								class="form-control" id="fpi" placeholder="fpi" />
						</div>
						<div class="form-group col-lg-3">
							<label for="atr-opt"> atropt </label> <input type="text"
								class="form-control" id="atr-opt" placeholder="atr-opt" />
						</div>
						<div class="form-group col-lg-3">
							<label for="prodty"> prodty </label> <input type="text"
								class="form-control" id="prodty" placeholder="prodty" />
						</div>
						<div class="form-group col-lg-3">
							<label for="izin"> izin </label> <input type="text"
								class="form-control" id="izin" placeholder="izin" />
						</div>
						<div class="form-group col-lg-3">
							<label for="sakit">sakit </label> <input type="text"
								class="form-control" id="sakit" placeholder="sakit" />
						</div>
						<div class="form-group col-lg-3">
							<label for="aplha">alpha</label> <input type="text"
								class="form-control" id="alpha" placeholder="alpha" />
						</div>
						<div class="form-group col-lg-3">
							<label for="nama-groupleader">nama Group Leader</label> <select
								class="form-control" id="nama-groupleader" required>
								<c:forEach var="gls" items="${gle}">
									<option value="${gls.id}">${gls.namaGl}</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group col-lg-4"
							style="float: right; padding-top: 20px;">

							<input type="button" class="btn btn-primary form-control"
								id="btn-save" value="save" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
  </div>
</div>
</security:authorize>

	
	<!-- Main content -->
		<section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Performa Operator</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                 <div class="row">
                  <div class="col-sm-12">
							<table id="data-table" class="table table-bordered table-striped dataTable">
								<thead align="center">
									<tr role="row">
										<!-- <th>Id</th> -->
										<th>Nama</th>
										<th>Nrp</th>
										<th>status</th>
										<th>departemen</th>
										<th>mdr</th>
										<th>prodty</th>
										<th>safety</th>
										<th>discipline</th>
										<th>fpi</th>
										<th>atr</th>
										<th>izin</th>
										<th>sakit</th>
										<th>alpha</th>
										<th>nrp GL</th>
										<th>nama GL</th>
										<security:authorize access="hasRole('ROLE_ADMINISTRATOR')">
										<th>Action</th>
										</security:authorize>
								</thead>
								<tbody>
									<c:forEach items="${performs }" var="performs">
										<tr>
											<%-- <td>${performs.id }</td> --%>
											<td>${performs.namaOPT }</td>
											<td>${performs.nrpOPT }</td>
											<td>${performs.statusOPT }</td>
											<td>${performs.deptOPT }</td>
											<td>${performs.mdr }</td>
											<td>${performs.prodty }</td>
											<td>${performs.safety }</td>
											<td>${performs.discipline }</td>
											<td>${performs.fpi }</td>
											<td>${performs.atrOpt }</td>
											<td>${performs.izin }</td>
											<td>${performs.sakit }</td>
											<td>${performs.alpha }</td>
											<td>${performs.groupleader.nrpGl }</td>
											<td>${performs.groupleader.namaGl }</td>
											<security:authorize access="hasRole('ROLE_ADMINISTRATOR')">
											<td><a id="${performs.id }" class="del btn btn-danger">
													delete</a> | <a id="${performs.id }"
												class="update btn btn-warning"> update</a></td>
											</security:authorize>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<!-- <th>Id</th> -->
										<th>Nama</th>
										<th>Nrp</th>
										<th>status</th>
										<th>departemen</th>
										<th>mdr</th>
										<th>prodty</th>
										<th>safety</th>
										<th>discipline</th>
										<th>fpi</th>
										<th>atr</th>
										<th>izin</th>
										<th>sakit</th>
										<th>alpha</th>
										<th>nrp G:</th>
										<th>nama GL</th>
										<security:authorize access="hasRole('ROLE_ADMINISTRATOR')">
										<th>Action</th>
										</security:authorize>
									</tr>
								</tfoot>
							</table>
				</div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          </div>
        </div>
        </section>
			<!-- /.content -->
			</div>
			<!-- javascript -->
			<script type="text/javascript">
	$(document).ready(function() {
						//set function save
						$("#btn-save").on('click', function() {	
							var performaBaru = {
									id : $('#id-perform').val(),
									namaOPT : $('#nama-opt').val(),
									nrpOPT : $('#nrp-opt').val(),
									statusOPT : $('#status').val(),
									deptOPT : $('#departemen').val(),
									mdr : $('#mdr').val(),
									prodty : $('#prodty').val(),
									safety : $('#safety').val(),
									discipline : $('#discipline').val(),
									fpi : $('#fpi').val(),
									atrOpt : $('#atr-opt').val(),
									izin : $('#izin').val(),
									sakit : $('#sakit').val(),
									alpha : $('#alpha').val(),
									groupleader : {
										id : $('#nama-groupleader').val()
									}
								}
												
						console.log(performaBaru);
						$.ajax({
							url : '${pageContext.request.contextPath }/performance/save',
							type : 'POST',
							data : JSON.stringify(performaBaru),
							contentType : 'application/json',
							success : function() {
								alert("berhasil menambah data performa ");
								window.location = "${pageContext.request.contextPath }/performance";
								},
								error : function() {
									alert("gagal menambah performa");
									}
								})
			});

			//delete
			$(".del").on('click', function() {
					var id = $(this).attr('id');
					/* $("#id-delete-emp").val(id);
					alert('deleted'); */
			})

			//ajax delete
			$(".del").on('click',function() {
					var id = $(this).attr('id');
					console.log(id);
				$.ajax({
					url : "${pageContext.request.contextPath}/performance/delete/"+ id,
						type : 'GET',
						success : function() {
							alert('deleted');
							window.location = "${pageContext.request.contextPath}/performance";
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
					url : '${pageContext.request.contextPath}/performance/getone/'+ id,
					type : 'GET',
					success : function(performanceUpdate) {
						SetUpdatePerformance(performanceUpdate);
						$('#updateperformance-modal').modal();
					},
					error : function(performanceUpdate) {
						alert('not updated')
						},
					dataType : 'json'
							});
			});

						//set-up data for update
						function SetUpdatePerformance(perform) {
							console.log(perform);
							$('#update-id-perform').val(perform.id),
							$('#update-nama-opt').val(perform.namaOPT),
							$('#update-nrp-opt').val(perform.nrpOPT),
							$('#update-status').val(perform.statusOPT),
							$('#update-departemen').val(perform.deptOPT),
							$('#update-mdr').val(perform.mdr),
							$('#update-prodty').val(perform.prodty),
							$('#update-safety').val(perform.safety),
							$('#update-discipline').val(perform.discipline),
							$('#update-fpi').val(perform.fpi),
							$('#update-atr-opt').val(perform.atrOpt),
							$('#update-izin').val(perform.izin),
							$('#update-sakit').val(perform.sakit),
							$('#update-alpha').val(perform.alpha),
							$('#update-nama-groupleader').val(perform.groupleader.id)
									
						}

						//btn update click
						$('#btn-update').on('click', function() {
											var performanceUpdate = {
													id 			: $('#update-id-perform').val(),
													namaOPT 	: $('#update-nama-opt').val(),
													nrpOPT 		: $('#update-nrp-opt').val(),
													statusOPT 	: $('#update-status').val(),
													deptOPT 	: $('#update-departemen').val(),
													mdr 		: $('#update-mdr').val(),
													prodty 		: $('#update-prodty').val(),
													safety 		: $('#update-safety').val(),
													discipline 	: $('#update-discipline').val(),
													fpi 		: $('#update-fpi').val(),
													atrOpt 		: $('#update-atr-opt').val(),
													izin 		: $('#update-izin').val(),
													sakit 		: $('#update-sakit').val(),
													alpha 		: $('#update-alpha').val(),
													groupleader : {
														id : $('#update-nama-groupleader').val()
													}
									
											}

											console.log(performanceUpdate);
											$.ajax({
														url : '${pageContext.request.contextPath}/performance/update',
														type : 'PUT',
														data : JSON.stringify(performanceUpdate),
														contentType : 'application/json',
														success : function(performanceUpdate) {
															alert("update succeess");
															window.location = '${pageContext.request.contextPath}/performance';
														},
														error : function() {
															alert("failed to upadte");
														}

													})
										});

					});
</script>
			<%@ include file = "modal/updateperformance-modal.jsp" %>	
<%@ include file="layout/bottom.jsp"%>