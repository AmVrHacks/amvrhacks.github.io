    <link rel="stylesheet" href="<?php echo base_url(); ?>template/back/amcharts/style.css"	type="text/css">
    <script src="<?php echo base_url(); ?>template/back/amcharts/amcharts.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>template/back/amcharts/serial.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>template/back/amcharts/amstock.js" type="text/javascript"></script>
	<script src="<?php echo base_url(); ?>template/back/amcharts/themes/light.js"></script>

    <div id="content-container">
        <div id="page-title">
            <h1 class="page-header text-overflow"><?php echo translate('most_viewed_ads');?></h1>
        </div>
            <div class="tab-base">
                <div class="panel">
                    <div class="panel-body">
                        <div class="tab-content">
                        
                        <!-- LIST -->
                        <div class="tab-pane fade active in" id="chartdiv" style="border:1px solid #ebebeb; border-radius:4px;">
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

<style>
	#chartdiv {
		width		: 100%;
		height		: 435px;
		font-size	: 11px;
	}										
</style>

<script>
	var base_url = '<?php echo base_url(); ?>'
	var user_type = 'admin';
	var module = 'report_most_viewed';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
	
	var chart = AmCharts.makeChart("chartdiv", {
		"theme": "light",
		"type": "serial",
		"startDuration": 2,
		"dataProvider": [
			<?php
				$this->db->order_by('number_of_view','desc');
				$this->db->limit(10);
				$prods = $this->db->get('product')->result_array();
				foreach($prods as $row){
			?>
			{
				"country": "<?php echo $row['title'] ?>",
				"visits": <?php echo $row['number_of_view'] ?>,
				"color": "#99BDF9"
			},
			<?php
				}
			?>
		],
		"valueAxes": [{
			"position": "left",
			"title": "Number of Views",
			
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
			"labelRotation": 90,
			"position": "bottom",
			"title": "Product Name",
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
</script>