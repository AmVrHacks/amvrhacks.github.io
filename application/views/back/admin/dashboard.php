<link rel="stylesheet" href="<?php echo base_url(); ?>template/back/amcharts/style.css" type="text/css">


<script src="<?php echo base_url(); ?>template/back/amcharts/amcharts.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="<?php echo base_url(); ?>template/back/amcharts/pie.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>template/back/plugins/gauge-js/gauge.min.js"></script>


<div id="content-container">	
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('dashboard');?></h1>
    </div>
    <div id="page-content">
        <div class="row">
			<div class="col-md-12 col-sm-12">
                <div class="col-md-4 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('total_ads');?></h3>
                        </div>
                        <div class="pad-all media">

                            <div class="text-center">
        
                                <!--Gauge placeholder-->
                                <canvas id="total_ads_gauge" height="70" class="canvas-responsive"></canvas>
        
                                <p class="h4">
                                    <span id="total_ads_gauge_txt" class="label label-info"></span>
                                </p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('published_ads');?></h3>
                        </div>
                        <div class="pad-all media">
                            <div class="text-center">
        
                                <!--Gauge placeholder-->
                                <canvas id="total_ads_published_gauge" height="70" class="canvas-responsive"></canvas>
        
                                <p class="h4">
                                    <span id="total_ads_published_gauge_txt" class="label label-success"></span>
                                </p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('unpublished_ads');?></h3>
                        </div>
                        <div class="pad-all media">
                            <div class="text-center">
        
                                <!--Gauge placeholder-->
                                <canvas id="total_ads_unpublished_gauge" height="70" class="canvas-responsive"></canvas>
        
                                <p class="h4">
                                    <span id="total_ads_unpublished_gauge_txt" class="label label-danger"></span>
                                </p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
        <div class="row">
			<div class="col-md-12 col-sm-12">
                <div class="col-md-6 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('product_packages');?></h3>
                        </div>
                        <div class="pad-all media">
                            <div class="text-center"> 
                                <div id="product_packages"></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('user_packages');?></h3>
                        </div>
                        <div class="pad-all media">
                            <div class="text-center">        
                                <div id="user_packages"></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>

        
        <div class="row">
			<div class="col-md-12 col-sm-12">
                <div class="col-md-12 col-sm-12">
                    <div class="panel panel-light panel-colorful">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('category_wise_ads');?></h3>
                        </div>
                        <div class="pad-all media">
                            <div id="category_products"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
    </div>
</div>

<script type="text/javascript">
    var user_type = 'admin';
</script>

<style>
	  #map-container {
		padding: 6px;
		border-width: 1px;
		border-style: solid;
		border-color: #ccc #ccc #999 #ccc;
		-webkit-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
		-moz-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
		box-shadow: rgba(64, 64, 64, 0.1) 0 2px 5px;
		width: 100%;
	  }
	  #map {
		width: 100%;
		height: 400px;
	  }
	  #map1 {
		width: 100%;
		height: 400px;
	  }
	  #actions {
		list-style: none;
		padding: 0;
	  }
	  #inline-actions {
		padding-top: 10px;
	  }
	  .item {
		margin-left: 20px;
	  }
	  #user_packages {
		  width: 100%;
		  height: 300px;
		  margin: auto;
	  }
	  #product_packages {
		  width: 100%;
		  height: 300px;
		  margin: auto;
	  }
	  #category_products{
		width		: 100%;
		height		: 435px;
		font-size	: 11px;
	  }	
</style>
<?php
	$total_ads 					= $this->db->get('product')->num_rows();
	$total_ads_published 		= $this->db->get_where('product',array('status'=>'approved'))->num_rows();
	$total_ads_unpublished 		= $this->db->get_where('product',array('status'=>'pending'))->num_rows();

?>
<script>
	
	$(document).ready(function() {
		
		var chart = AmCharts.makeChart("category_products", {
			"theme": "none",
			"type": "serial",
			"startDuration": 2,
			"dataProvider": [
			<?php
				$category = $this->db->get('category')->result_array();
				foreach($category as $row){
					$num_user_category = $this->db->get_where('product',array('category_id'=>$row['category_id']))->num_rows();
			?>
			{
				"country": "<?php echo $row['name']; ?>",
				"visits": <?php echo $num_user_category; ?>,
				"color": "#99bdf9"
			},
			<?php
				}
			?>
			],
			"valueAxes": [{
				"position": "left",
				"title": "Visitors"
			}],
			"graphs": [{
				"balloonText": "[[category]]: <b>[[value]]</b>",
				"fillColorsField": "color",
				"fillAlphas": 1,
				"lineAlpha": 0.1,
				"type": "column",
				"valueField": "visits"
			}],
			"depth3D": 20,
			"angle": 30,
			"chartCursor": {
				"categoryBalloonEnabled": false,
				"cursorAlpha": 0,
				"zoomable": false
			},    
			"categoryField": "country",
			"categoryAxis": {
				"gridPosition": "start",
				"labelRotation": 90
			},
			"export": {
				"enabled": true
			 }
		
		});
		jQuery('.chart-input').off().on('input change',function() {
			var property	= jQuery(this).data('property');
			var target		= chart;
			chart.startDuration = 0;
		
			if ( property == 'topRadius') {
				target = chart.graphs[0];
				if ( this.value == 0 ) {
				  this.value = undefined;
				}
			}
		
			target[property] = this.value;
			chart.validateNow();
		});
		
		
		var chart = AmCharts.makeChart( "product_packages", {
		  "type": "pie",
		  "theme": "none",
		  "dataProvider": [ 
			<?php
				$product_types = $this->db->get_where('product_type',array('status'=>'ok'))->result_array();
				$i = 0;
				foreach($product_types as $row){
					$i++;
					$this->db->like('product_package_detail','{"package":"'.$row['product_type_id'].'",','both');
					$num_product = $this->db->get('product')->num_rows();
			?>
		  {
			"country": "<?= $row['name']; ?>",
			"value": <?= $num_product; ?>
		  }, 
			<?php 
				}
				$i++;
			?>
		  
		  ],
		  "valueField": "value",
		  "titleField": "country",
		  "outlineAlpha": 0.4,
		  "depth3D": 15,
		  "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
		  "angle": 30,
		  "export": {
			"enabled": true
		  }
		} 
		);
		
		jQuery( '.chart-input' ).off().on( 'input change', function() {
		  var property = jQuery( this ).data( 'property' );
		  var target = chart;
		  var value = Number( this.value );
		  chart.startDuration = 0;
		
		  if ( property == 'innerRadius' ) {
			value += "%";
		  }
		
		  target[ property ] = value;
		  chart.validateNow();
		} 
		);
		
		
		<?php
			$total_user = $this->db->get('user')->num_rows();
		?>
		var chart = AmCharts.makeChart( "user_packages", {
		  "type": "pie",
		  "theme": "none",
		  "dataProvider": [ 
			<?php
				$user_types = $this->db->get_where('user_type',array('status'=>'ok'))->result_array();
				$i = 0;
				foreach($user_types as $row){
					$i++;
					$num_user = $this->db->get_where('user',array('user_type'=>$row['user_type_id']))->num_rows();
			?>
		  {
			"country": "<?= $row['name']; ?>",
			"value": <?= $num_user; ?>
		  },
			<?php 
				}
				$i++;
			?>
		  
		  ],
		  "valueField": "value",
		  "titleField": "country",
		  "outlineAlpha": 0.4,
		  "depth3D": 15,
		  "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
		  "angle": 30,
		  "export": {
			"enabled": true
		  }
		} );
		jQuery( '.chart-input' ).off().on( 'input change', function() {
		  var property = jQuery( this ).data( 'property' );
		  var target = chart;
		  var value = Number( this.value );
		  chart.startDuration = 0;
		
		  if ( property == 'innerRadius' ) {
			value += "%";
		  }
		
		  target[ property ] = value;
		  chart.validateNow();
		} );
		

		/*
		var gaugeChart = AmCharts.makeChart("user_packages", {
		  "type": "gauge",
		  "theme": "light",
		  "axes": [{
			"axisAlpha": 0,
			"tickAlpha": 0,
			"labelsEnabled": false,
			"startValue": 0,
			"endValue": <?= $total_user; ?>,
			"startAngle": 0,
			"endAngle": 270,
			"bands": [
			<?php
				$user_types = $this->db->get_where('user_type',array('status'=>'ok'))->result_array();
				$i = 0;
				foreach($user_types as $row){
					$i++;
					$num_user = $this->db->get_where('user',array('user_type'=>$row['user_type_id']))->num_rows();
			?>
			{
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": <?= $total_user; ?>,
			  "radius": "<?= 120-(20*$i); ?>%",
			  "innerRadius": "<?= 105-(20*$i); ?>%"
			}, {
			  "color": "#84b761",
			  "startValue": 0,
			  "endValue": <?= $num_user; ?>,
			  "radius": "<?= 120-(20*$i); ?>%",
			  "innerRadius": "<?= 105-(20*$i); ?>%",
			  "balloonText": "<?= $num_user; ?>"
			},
			<?php 
				}
				$i++;
			?>
			{
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": <?= $total_user; ?>,
			  "radius": "<?= 120-(20*$i); ?>%",
			  "innerRadius": "<?= 105-(20*$i); ?>%"
			}, {
			  "color": "#84b761",
			  "startValue": 0,
			  "endValue": <?= $this->db->get_where('user',array('user_type'=>'default'))->num_rows(); ?>,
			  "radius": "<?= 120-(20*$i); ?>%",
			  "innerRadius": "<?= 105-(20*$i); ?>%",
			  "balloonText": "<?= $this->db->get_where('user',array('user_type'=>'default'))->num_rows(); ?>"
			},
			
			]
		  }
		  
		  ],
		  "allLabels": [		  
			<?php
				$s = -5;
				$r = 10;
				foreach($user_types as $row){
			?>
		  {
			"text": "<?= $row['name']; ?>",
			"x": "49%",
			"y": "<?php echo $s = $s+$r; $r=$r-1; ?>%",
			"size": 15,
			"bold": true,
			"color": "#84b761",
			"align": "right"
		  },
			<?php 
				}
			?>
		  {
			"text": "<?= translate('default'); ?>",
			"x": "49%",
			"y": "<?php echo $s = $s+$r; $r=$r-1; ?>%",
			"size": 15,
			"bold": true,
			"color": "#84b761",
			"align": "right"
		  },
		  
		  ],
		  "export": {
			"enabled": true
		  }
		});
		
		var gaugeChart = AmCharts.makeChart("product_packages", {
		  "type": "gauge",
		  "theme": "light",
		  "axes": [{
			"axisAlpha": 0,
			"tickAlpha": 0,
			"labelsEnabled": false,
			"startValue": 0,
			"endValue": 100,
			"startAngle": 0,
			"endAngle": 270,
			"bands": [{
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": 100,
			  "radius": "100%",
			  "innerRadius": "85%"
			}, {
			  "color": "#84b761",
			  "startValue": 0,
			  "endValue": 80,
			  "radius": "100%",
			  "innerRadius": "85%",
			  "balloonText": "90%"
			}, {
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": 100,
			  "radius": "80%",
			  "innerRadius": "65%"
			}, {
			  "color": "#fdd400",
			  "startValue": 0,
			  "endValue": 35,
			  "radius": "80%",
			  "innerRadius": "65%",
			  "balloonText": "35%"
			}, {
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": 100,
			  "radius": "60%",
			  "innerRadius": "45%"
			}, {
			  "color": "#cc4748",
			  "startValue": 0,
			  "endValue": 92,
			  "radius": "60%",
			  "innerRadius": "45%",
			  "balloonText": "92%"
			}, {
			  "color": "#eee",
			  "startValue": 0,
			  "endValue": 100,
			  "radius": "40%",
			  "innerRadius": "25%"
			}, {
			  "color": "#67b7dc",
			  "startValue": 0,
			  "endValue": 68,
			  "radius": "40%",
			  "innerRadius": "25%",
			  "balloonText": "68%"
			}]
		  }],
		  "allLabels": [{
			"text": "First option",
			"x": "49%",
			"y": "5%",
			"size": 15,
			"bold": true,
			"color": "#84b761",
			"align": "right"
		  }, {
			"text": "Second option",
			"x": "49%",
			"y": "15%",
			"size": 15,
			"bold": true,
			"color": "#fdd400",
			"align": "right"
		  }, {
			"text": "Third option",
			"x": "49%",
			"y": "24%",
			"size": 15,
			"bold": true,
			"color": "#cc4748",
			"align": "right"
		  }, {
			"text": "Fourth option",
			"x": "49%",
			"y": "33%",
			"size": 15,
			"bold": true,
			"color": "#67b7dc",
			"align": "right"
		  }],
		  "export": {
			"enabled": true
		  }
		});
		
		*/
		
		var opts_total_ads = {
			lines: 10, // The number of lines to draw
			angle: 0, // The length of each line
			lineWidth: 0.3, // The line thickness
			pointer: {
				length: 0.45, // The radius of the inner circle
				strokeWidth: 0.035, // The rotation offset
				color: '#242d3c' // Fill color
			},
			limitMax: 'true', // If true, the pointer will not go past the end of the gauge
			colorStart: '#177bbb', // Colors
			colorStop: '#177bbb', // just experiment with them
			strokeColor: '#ceefff', // to see which ones work best for you
			generateGradient: true
		};
		
		var target = document.getElementById('total_ads_gauge'); // your canvas element
		var gauge = new Gauge(target).setOptions(opts_total_ads); // create sexy gauge!
		gauge.maxValue = <?php echo round(($total_ads*110)/100); ?>; // set max gauge value
		gauge.animationSpeed = 32; // set animation speed (32 is default value)
		gauge.set(<?php echo $total_ads; ?>); // set actual value
		gauge.setTextField(document.getElementById("total_ads_gauge_txt"));
		
		
		var opts_total_ads_published = {
			lines: 10, // The number of lines to draw
			angle: 0, // The length of each line
			lineWidth: 0.3, // The line thickness
			pointer: {
				length: 0.45, // The radius of the inner circle
				strokeWidth: 0.035, // The rotation offset
				color: '#242d3c' // Fill color
			},
			limitMax: 'true', // If true, the pointer will not go past the end of the gauge
			colorStart: '#06a53e', // Colors
			colorStop: '#06a53e', // just experiment with them
			strokeColor: '#caffdd', // to see which ones work best for you
			generateGradient: true
		};
		
		var target = document.getElementById('total_ads_published_gauge'); // your canvas element
		var gauge = new Gauge(target).setOptions(opts_total_ads_published); // create sexy gauge!
		gauge.maxValue = <?php echo ($total_ads); ?>; // set max gauge value
		gauge.animationSpeed = 32; // set animation speed (32 is default value)
		gauge.set(<?php echo $total_ads_published; ?>); // set actual value
		gauge.setTextField(document.getElementById("total_ads_published_gauge_txt"));
		
		
		var opts_total_ads_unpublished = {
			lines: 10, // The number of lines to draw
			angle: 0, // The length of each line
			lineWidth: 0.3, // The line thickness
			pointer: {
				length: 0.45, // The radius of the inner circle
				strokeWidth: 0.035, // The rotation offset
				color: '#242d3c' // Fill color
			},
			limitMax: 'true', // If true, the pointer will not go past the end of the gauge
			colorStart: '#BB0000', // Colors
			colorStop: '#BB0000', // just experiment with them
			strokeColor: '#ffdbdb', // to see which ones work best for you
			generateGradient: true
		};
		
		var target = document.getElementById('total_ads_unpublished_gauge'); // your canvas element
		var gauge = new Gauge(target).setOptions(opts_total_ads_unpublished); // create sexy gauge!
		gauge.maxValue = <?php echo ($total_ads); ?>; // set max gauge value
		gauge.animationSpeed = 32; // set animation speed (32 is default value)
		gauge.set(<?php echo $total_ads_unpublished; ?>); // set actual value
		gauge.setTextField(document.getElementById("total_ads_unpublished_gauge_txt"));
		
	});
	 
	(function() {

		function init() {
			var speed = 300,
				easing = mina.backout;

			[].slice.call ( document.querySelectorAll( '#grid > a' ) ).forEach( function( el ) {
				var s = Snap( el.querySelector( 'svg' ) ), path = s.select( 'path' ),
					pathConfig = {
						from : path.attr( 'd' ),
						to : el.getAttribute( 'data-path-hover' )
					};

				el.addEventListener( 'mouseenter', function() {
					path.animate( { 'path' : pathConfig.to }, speed, easing );
				} );

				el.addEventListener( 'mouseleave', function() {
					path.animate( { 'path' : pathConfig.from }, speed, easing );
				} );
			} );
		}

		//init();

	})();
</script>