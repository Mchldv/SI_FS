<?php 
include "header.php";
include "sidebar.php";
?>

<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Text Editors
				<small>Advanced form element</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Forms</a></li>
				<li class="active">Editors</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">
		
			
			<div class="row">	
				<div class="col-xs-8">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">List Carer</h3>
						</div><!-- /.box-header -->
						<div class="box-body no-padding">
							<table class="table table-striped">
								<tr>
									<th style="width: 10px">#</th>
									<th>Task</th>
									<th>Progress</th>
									<th style="width: 40px">Label</th>
								</tr>
								<tr>
									<td>1.</td>
									<td>Update software</td>
									<td>
										<div class="progress xs">
											<div class="progress-bar progress-bar-danger" style="width: 55%"></div>
										</div>
									</td>
									<td><span class="badge bg-red">55%</span></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>Clean database</td>
									<td>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
										</div>
									</td>
									<td><span class="badge bg-yellow">70%</span></td>
								</tr>
								<tr>
									<td>3.</td>
									<td>Cron job running</td>
									<td>
										<div class="progress xs progress-striped active">
											<div class="progress-bar progress-bar-primary" style="width: 30%"></div>
										</div>
									</td>
									<td><span class="badge bg-light-blue">30%</span></td>
								</tr>
								<tr>
									<td>4.</td>
									<td>Fix and squish bugs</td>
									<td>
										<div class="progress xs progress-striped active">
											<div class="progress-bar progress-bar-success" style="width: 90%"></div>
										</div>
									</td>
									<td><span class="badge bg-green">90%</span></td>
								</tr>
							</table>
						</div><!-- /.box-body -->
					</div><!-- /.box -->
				</div><!-- /.col -->
				<div class="col-xs-4">
					<!-- TO DO List -->
					<div class="box box-primary">
						<div class="box-header">
							<i class="ion ion-clipboard"></i>
							<h3 class="box-title">Recent(s)</h3>
							<div class="box-tools pull-right">
								<ul class="pagination pagination-sm inline">
									<li><a href="#">&laquo;</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div><!-- /.box-header -->
						<div class="box-body">
							<ul class="todo-list">
								<li>
									<!-- drag handle -->
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>  
									<!-- checkbox -->
									<input type="checkbox" value="" name=""/>                                            
									<!-- todo text -->
									<span class="text">Design a nice theme</span>
									<!-- Emphasis label -->
									<small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
									<!-- General tools such as edit or delete-->
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
								<li>
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>                                            
									<input type="checkbox" value="" name=""/>
									<span class="text">Make the theme responsive</span>
									<small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
								<li>
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>
									<input type="checkbox" value="" name=""/>
									<span class="text">Let theme shine like a star</span>
									<small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
								<li>
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>
									<input type="checkbox" value="" name=""/>
									<span class="text">Let theme shine like a star</span>
									<small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
								<li>
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>
									<input type="checkbox" value="" name=""/>
									<span class="text">Check your messages and notifications</span>
									<small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
								<li>
									<span class="handle">
										<i class="fa fa-ellipsis-v"></i>
										<i class="fa fa-ellipsis-v"></i>
									</span>
									<input type="checkbox" value="" name=""/>
									<span class="text">Let theme shine like a star</span>
									<small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
									<div class="tools">
										<i class="fa fa-edit"></i>
										<i class="fa fa-trash-o"></i>
									</div>
								</li>
							</ul>
						</div><!-- /.box-body -->
						<div class="box-footer clearfix no-border">
							<button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
						</div>
					</div><!-- /.box -->
				</div><!-- /.col -->
			</div><!-- ./row -->
				

		</section><!-- /.content -->
	</aside><!-- /.right-side -->
</div><!-- ./wrapper -->

	
<?php 
include "footer.php";
?>