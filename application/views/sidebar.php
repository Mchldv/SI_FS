<div class="wrapper row-offcanvas row-offcanvas-left">
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="left-side sidebar-offcanvas">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="img/logo.jpg" class="img-circle" alt="User Image" />
				</div>
				<div class="pull-left info">
					<p>Hello, Jane</p>

					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<!-- search form -->
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control" placeholder="Search..."/>
					<span class="input-group-btn">
						<button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
					</span>
				</div>
			</form>
			<!-- /.search form -->
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu">
				<li class="active">
					<a href="<?php echo base_url();?>">
						<i class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-bar-chart-o"></i>
						<span>Member</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="index/memberOverview"><i class="fa fa-angle-double-right"></i> Overview</a></li>
						<li><a href="index/memberAttendance"><i class="fa fa-angle-double-right"></i> Attendance</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-edit"></i> <span>CG</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="index/cgOverview"><i class="fa fa-angle-double-right"></i> Overview</a></li>
						<li><a href="index/cgList"><i class="fa fa-angle-double-right"></i> CG List</a></li>
						<li><a href="index/cgCgl"><i class="fa fa-angle-double-right"></i> CGL List</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-laptop"></i>
						<span>Ministry</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="index/ministryOverview"><i class="fa fa-angle-double-right"></i> Overview</a></li>
						<li><a href="index/ministryMinister"><i class="fa fa-angle-double-right"></i> Minister List</a></li>
					</ul>
				</li>
				
				<li class="treeview">
					<a href="#">
						<i class="fa fa-table"></i> <span>Event</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="index/eventOverview"><i class="fa fa-angle-double-right"></i> Overview</a></li>
						<li><a href="index/eventCommittee"><i class="fa fa-angle-double-right"></i> Committee</a></li>
					</ul>
				</li>
				<li class="treeview">
					<a href="#">
						<i class="fa fa-folder"></i> <span>Care Service</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="index/careOverview"><i class="fa fa-angle-double-right"></i> Overview</a></li>
						<li><a href="index/careHistory"><i class="fa fa-angle-double-right"></i> History</a></li>
					</ul>
				</li>
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>