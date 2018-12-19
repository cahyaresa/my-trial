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
			<!-- /.content -->
<%@ include file="layout/bottom.jsp"%>