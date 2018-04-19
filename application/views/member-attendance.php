<?php 
include "header.php";
include "sidebar.php";
?>
<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Member's Charts
				<small>Attendances, activities and such</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Blank page</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">
			

			<div class="row">
				<div class="col-md-6">
				<!-- Input addon -->
					<div class="box box-info">
						<div class="box-header">
							<h3 class="box-title">Search Member</h3>
						</div>
						<div class="box-body">
							<div class="input-group">
								<input type="text" class="form-control">
								<div class="input-group-btn">
									<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Search <span class="fa fa-caret-down"></span></button>
									<ul class="dropdown-menu">
										<li><a href="#">Sunday Attendance</a></li>
										<li><a href="#">CG Attendance</a></li>
										<li><a href="#">Ministry</a></li>
										<li><a href="#">Event Attendance</a></li>
									</ul>
								</div><!-- /btn-group -->
							</div><!-- /input-group -->
						</div><!-- /.box-body -->
					</div><!-- /.box -->
				</div><!-- /.col -->
				<div class="col-md-12">
					<!-- Line chart -->
					<div class="box box-primary">
						<div class="box-header">
							<i class="fa fa-bar-chart-o"></i>
							<h3 class="box-title">Sunday Attendance</h3>
						</div>
						<div class="box-body">
							<div id="line-chart" style="height: 300px;"></div>
						</div><!-- /.box-body-->
					</div><!-- /.box -->
				</div><!-- /.col -->

				
			</div><!-- /.row -->
		</section><!-- /.content -->

	</aside><!-- /.right-side -->
</div><!-- ./wrapper -->

		<!-- FLOT CHARTS -->
        <script src="../../js/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
        <script src="../../js/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
        <script src="../../js/plugins/flot/jquery.flot.pie.min.js" type="text/javascript"></script>
        <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
        <script src="../../js/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
		
		<!-- Page script -->
        <script type="text/javascript">

            $(function() {


                /*
                 * LINE CHART
                 * ----------
                 */
                //LINE randomly generated data

                var sin = [], cos = [];
                for (var i = 0; i < 14; i += 0.5) {
                    sin.push([i, Math.sin(i)]);
                    cos.push([i, Math.cos(i)]);
                }
                var line_data1 = {
                    data: sin,
                    color: "#3c8dbc"
                };
                var line_data2 = {
                    data: cos,
                    color: "#00c0ef"
                };
                $.plot("#line-chart", [line_data1, line_data2], {
                    grid: {
                        hoverable: true,
                        borderColor: "#f3f3f3",
                        borderWidth: 1,
                        tickColor: "#f3f3f3"
                    },
                    series: {
                        shadowSize: 0,
                        lines: {
                            show: true
                        },
                        points: {
                            show: true
                        }
                    },
                    lines: {
                        fill: false,
                        color: ["#3c8dbc", "#f56954"]
                    },
                    yaxis: {
                        show: true,
                    },
                    xaxis: {
                        show: true
                    }
                });
                //Initialize tooltip on hover
                $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
                    position: "absolute",
                    display: "none",
                    opacity: 0.8
                }).appendTo("body");
                $("#line-chart").bind("plothover", function(event, pos, item) {

                    if (item) {
                        var x = item.datapoint[0].toFixed(2),
                                y = item.datapoint[1].toFixed(2);

                        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                                .css({top: item.pageY + 5, left: item.pageX + 5})
                                .fadeIn(200);
                    } else {
                        $("#line-chart-tooltip").hide();
                    }

                });
                /* END LINE CHART */

               

            });

            /*
             * Custom Label formatter
             * ----------------------
             */
            function labelFormatter(label, series) {
                return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
                        + label
                        + "<br/>"
                        + Math.round(series.percent) + "%</div>";
            }
        </script>
<?php 
include "footer.php";
?>