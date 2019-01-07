<%@ include file="layout/top.jsp"%>
<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Tabel <small>Form Cnm</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>
		
		<!-- <style>
		article, aside, figure, footer, header, hgroup, menu, nav, section {
			display: block;
		}
		</style> -->
		<security:authorize access="hasRole('ROLE_GROUPLEADER')">
	<section class="content">
				<div class="row">
					<div class="col-lg-12 container-fluid">
						<div style="float: left; padding-left: 20px; padding-right: 20px;">
							<form
								action="${pageContext.request.contextPath }/form/save"
								method="post">
								<div class="form-group">
									<label for="id-cnm"></label> <input type="hidden"
										class="form-control" id="id-cnm" placeholder="id-cnm" />
								</div>
								<div class="form-group">
									<label for="nama_gl"></label> <input type="hidden"
										class="form-control" id="nama_gl" value="masih dipikir" />
								</div>
								<div class="form-group col-lg-3 col-md-4 col-sm-6">
									<label for="nama-opt">Nama operator </label> <input type="text"
										class="form-control" id="nama-opt" placeholder="Nama Operator" />
								</div>
								<div class="form-group col-lg-3 col-md-4 col-sm-6">
									<label for="nrp-opt">Nrp operator</label> <input type="text"
										class="form-control" id="nrp-opt" placeholder="nrp operator" />
								</div>
								<div class="form-group col-lg-3 col-md-4 col-sm-6">
									<label for="materi"> Materi </label><input type="text" 
									class="form-control" id="materi" placeholder="materi" /> 
								</div>
								<div class="form-group col-lg-3 col-md-4 col-sm-6">
									<label for="posisi">photo </label> 
									<input type='file' id="photo" onchange="readURL(this);" />
    								<!-- <img id="blah" src="#" alt="your image" /> -->
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
			
			</security:authorize>
			
			<security:authorize access="hasRole('ROLE_ADMINISTRATOR')">
			<!-- Main content -->
			<section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Table With Full Features</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <!-- <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>Show <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="example1"></label></div></div></div>-->
                  <div class="row">
                  <div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info"> 
                    <thead align="center">
                      <tr role="row">
					<th>Id</th>
					<th>nrpOpt </th>
					<th>nama Opt</th>
					<th>materi</th>
					<th>tanggal</th>
					<th>foto</th>
                      	</tr>
                    </thead>
                   <tbody>
					<c:forEach items="${forms }" var="forms">
						<tr>
							<td>${forms.id }</td>
							<td>${forms.nrpOpt }</td>
							<td>${forms.namaOpt }</td>
							<td>${forms.materi }</td>
							<td>${forms.tanggal }</td>
							<td>${forms.foto }</td>
							<td><a id="${forms.id }" class="del btn btn-danger">
									delete</a> | <a id="${forms.id }"
								class="update btn btn-warning"> update</a></td>
						</tr>
					</c:forEach>
				</tbody>
                    <tfoot>
                    <tr role="row">
					<th>Id</th>
					<th>nrpOpt </th>
					<th>nama opt</th>
					<th>materi</th>
					<th>tanggal</th>
					<th>foto</th>
                    </tfoot>
                  </table>
              <!--     </div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
                 -->
                 </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          </div>
          </div>
        </section>
        </security:authorize>
			<!-- /.content -->
			
			
			<script type="text/javascript">
		$(document).ready(function(){		
						//set function save
						$("#btn-save").on('click', function() {	
							var formBaru = {
												id : $('#id-cnm ').val(),
												nrpOpt : $('#nrp-opt').val(),
												namaOpt : $('#nama-opt').val(),
												materi : $('#materi').val(),
												tanggal : new Date,
												foto : $('#photo').val()
											}
						console.log(formBaru);
						$.ajax({
							url : '${pageContext.request.contextPath }/form/save',
							type : 'POST',
							data : JSON.stringify(formBaru),
							contentType : 'application/json',
							success : function() {
								alert("berhasil menambah data groupleader");
								window.location = "${pageContext.request.contextPath }/form";
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
							window.location = "${pageContext.request.contextPath}/form";
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
							$('#update-password').val(groupleader.password),
							$('#update-role').val(groupleader.role)
									
						}

						//btn update click
						$('#btn-update').on('click', function() {
											var glUpdate = {
													id : $('#update-id').val(),
													namaGl :$('#update-nama').val(),
													nrpGl : $('#update-nrp').val(), 
													posisiGl : $('#update-posisi').val(), 
													deptGl : $('#update-departemen').val(),
													password : $('#update-password').val(),
													role : $('#role').val(),
									
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
<%@ include file="layout/bottom.jsp"%>