<script>
    var gmap_api_key = '<?php echo $map_api; ?>';
	var base_url = "<?php echo base_url(); ?>";
</script>
<script src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>template/front/js/mapcluster.js"></script>

<div id="map" class="mapping"></div>
<style>
/*<script src="https://www.google.com/jsapi"></script>*/
  #map {
	width: 100%;
	height: 600px;
  }
</style>
<script>
	
	var sale_details = [
	<?php
        $this->db->where('status','approved');
        $this->db->order_by('product_id','desc');
        $this->db->limit(100);
		$products = $this->db->get('product')->result_array();
		foreach($products as $row){
			$title 			= $row['title'];
			$address 		= $row['address'];
			$langlat 		= explode(',',str_replace('(','',str_replace(')','',$row['langlat'])));
			$grand_total 	= $row['price'];
			$condition 	 	= $row['condition'];
			$cat		 	= $row['category_id'];
			$link 			= $this->Crud_model->product_link($row['product_id']);
			$img 			= $this->Crud_model->product_image($row['product_id'],'thumb');
			$distance_btn   = '<div class="btn btn-xs btn-base btn-icon fa-map-marker pull-right"><span  onclick="get_distance('.$row['product_id'].')" >'.translate('distance').'</span></div>';
	?>
		["<?php echo $title;  ?>",<?php echo $langlat[0];  ?>,<?php echo $langlat[1];  ?>, '<?php echo currency().$grand_total;  ?>', "<?php echo $link;  ?>", "<?php echo $img;  ?>", "<?php echo $address;  ?>", '<?php echo $cat;  ?>', '<?php echo translate($condition);  ?>', '<?php echo $distance_btn;  ?>'],
	<?php
		} 
	?>
	];
	
    function search_loc(){
        var sale_details_new = [];
        var text = $('#search').val().toLowerCase();
		var	cat = $('.catsd').val();
		var con = $('.condi').val();
        if(text == '' && cat == '' && con == ''){
            sale_details_new = sale_details;
        } else {
            for (i = 0; i < sale_details.length; i++) {
                var str = sale_details[i][0];
                var catr = sale_details[i][7];
                var cond = sale_details[i][8];
                str = str.toLowerCase();
				var cate = 'no';
				if(cat == catr){
					cate = 'ok';
				}
				if(cat==''){
					cate = 'ok';	
				}
				var cone = 'no';
				if(con == cond){
					cone = 'ok';
				}
				if(con==''){
					cone = 'ok';	
				}
                if(str.search(text) !== -1 && cate == 'ok' && cone == 'ok'){
                    sale_details_new.push([sale_details[i][0], sale_details[i][1], sale_details[i][2], sale_details[i][3], sale_details[i][4], sale_details[i][5], sale_details[i][6], sale_details[i][7], sale_details[i][8], sale_details[i][9]]);
                }
            }
        }
        initialize(sale_details_new);
    }
	
    //var sale_details = [];    

    google.load('maps', '3', {
        other_params: 'sensor=false&key=<?php echo $map_api; ?>'
    });
    
    google.setOnLoadCallback(search_loc);
    
    var styles = [
        [{
            url: '../images/conv30.png',
            height: 27,
            width: 30,
            anchor: [3, 0],
            textColor: '#ff00ff',
            opt_textSize: 10
        }, {
            url: '../images/conv40.png',
            height: 36,
            width: 40,
            opt_anchor: [6, 0],
            opt_textColor: '#ff0000',
            opt_textSize: 11
        }, {
            url: '../images/conv50.png',
            width: 50,
            height: 45,
            opt_anchor: [8, 0],
            opt_textSize: 12
        }],
        [{
            url: '../images/heart30.png',
            height: 26,
            width: 30,
            opt_anchor: [4, 0],
            opt_textColor: '#ff00ff',
            opt_textSize: 10
        }, {
            url: '../images/heart40.png',
            height: 35,
            width: 40,
            opt_anchor: [8, 0],
            opt_textColor: '#ff0000',
            opt_textSize: 11
        }, {
            url: '../images/heart50.png',
            width: 50,
            height: 44,
            opt_anchor: [12, 0],
            opt_textSize: 12
        }]
    ];
    
    var markerClusterer = null;
    var map = null;
    var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&' +
        'chco=FFFFFF,008CFF,000000&ext=.png';
    
    //$('#vendors_list').on('shown.bs.modal', function (e) {
        
    //})

    function refreshMap(sale_details) {
        //if (markerClusterer) {
        //  markerClusterer.clearMarkers();
        //}
    
        var markers = [];
        var infoWindows = [];
    
        var markerImage = new google.maps.MarkerImage(imageUrl,
            new google.maps.Size(24, 32));
    
    
        var bound = new google.maps.LatLngBounds();
        // Loop through our array of markers & place each one on the map  
        for (i = 0; i < sale_details.length; i++) {
            if(sale_details[i][1] !== '' && sale_details[i][2] !== ''){
                var latLng = new google.maps.LatLng(sale_details[i][1], sale_details[i][2])
                var marker = new google.maps.Marker({
                    position: latLng,
                    draggable: false,
                    icon: markerImage,
                    animation: google.maps.Animation.DROP,
                    infoWindowIndex: i
                });
        
                bound.extend(new google.maps.LatLng(sale_details[i][1], sale_details[i][2]));
        
                var content = '<div class="info_content col-md-12">' +
					'<div class="col-md-4">' +
					'<img src="'+sale_details[i][5]+'" style="width:100%">' +
					'</div>' +
					'<div class="col-md-8">' +
                    '<a href="'+sale_details[i][4]+'">' +
                    '<h3>' + sale_details[i][0] + '</h3></a>' +
                    '<h4>' + sale_details[i][8] + '</h4>' +
                    '<p>' + sale_details[i][6] + '</p>' +
                    '<div>' + sale_details[i][9] + '</div>'+
                    '</div>'+
                    '</div>';
        
                var infoWindow = new google.maps.InfoWindow({
                    content: content
                });
        
                google.maps.event.addListener(marker, 'click',
                    function(event) {
                        infoWindows[this.infoWindowIndex].open(map, this);
                    }
                );
        
                infoWindows.push(infoWindow);
                markers.push(marker);
            }
        }
    
        var zoom = parseInt(16);
        var size = parseInt(40);
        var style = parseInt(-1);
    
        markerClusterer = new MarkerClusterer(map, markers, {
            maxZoom: zoom,
            gridSize: size,
            styles: styles[style]
        });
    
		
        //map.setCenter(bound.getCenter())
        //map1.setCenter(bound1.getCenter())
        map.fitBounds(bound);
    }
    
    function initialize(sale_details) {
        map = new google.maps.Map(document.getElementById('map'), {
    		scrollwheel: false,
            zoom: 4,
            center: new google.maps.LatLng(23.91, 90.38),
            mapTypeId: google.maps.MapTypeId.ROADMAP 
        });
        var stylesr = [
		  {
			stylers: [
			  { hue: '#00ffe6' },
			  { saturation: -20 }
			]
		  },{
			featureType: "road",
			elementType: "geometry",
			stylers: [
			  { lightness: 100 },
			  { visibility: "simplified" }
			]
		  },{
			featureType: "road",
			elementType: "labels",
			stylers: [
			  { visibility: "off" }
			]
		  }
		];
		//map.setOptions({styles: stylesr});
        refreshMap(sale_details);
    }
    
    function clearClusters(e) {
        e.preventDefault();
        e.stopPropagation();
        markerClusterer.clearMarkers();
    }

</script>


    <!-- MAIN CONTENT -->
    <section class="slice no-padding base">
        <div class="cta-wr">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-normal">
                            <?php echo translate($parallax_title)?>
                        </h1>
                    </div>
                    <div class="col-md-4">
                        <a href="<?php echo base_url(); ?>index.php/home/post_add" class="btn btn-lg btn-b-white btn-icon btn-icon-right btn-check pull-right">
                            <span><?php echo translate('post_an_ad'); ?></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>     
    