<?php
	$map_api = $this->db->get_where('general_settings',array('type' => 'map_api'))->row()->value;
?>
<script src="<?php echo base_url(); ?>template/front/js/jquery.js"></script>
<script  src="https://maps.googleapis.com/maps/api/js?key=<?php echo $map_api; ?>"
  type="text/javascript"></script>
<script>

//https://developers.google.com/maps/documentation/javascript/get-api-key#key

var map, ren, ser;
var data = {};
var data2 = {};
var marker;
var infowindow;
var doMark = true ;
var directionsDisplay;

var wayA;
var wayB;

//Função de Inicio

function goma(lat,lan)
{	
	var mapDiv = document.getElementById('mappy');

	var mapOptions = {
	zoom: 12, 
	
	//center: new google.maps.LatLng(lat, lan),
	center: new google.maps.LatLng<?php echo $latlan; ?>,
	mapTypeId : google.maps.MapTypeId.ROADMAP
	}
	//Cria o mapa do google, coloca as definições do mapa, como tipo de visualização, pode ser ROADMAP, SATELLITE, HYBRID, TERRAIN
	map = new google.maps.Map( mapDiv, mapOptions );
	
	var control = document.createElement('DIV');
    control.style.padding = '1px'
    control.style.border = '1px solid #000';
    control.style.backgroundColor = 'white';
    control.style.cursor = 'pointer';
	
    control.index = 1;
  
  
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(control);
	
  var l = new google.maps.LatLng(lat, lan);
  var m = new google.maps.LatLng<?php echo $latlan; ?>;
  
  get_route(m,l);
  
  
  var bound = new google.maps.LatLngBounds();
  bound.extend(new google.maps.LatLng(lat, lan));
  bound.extend(new google.maps.LatLng<?php echo $latlan; ?>);
  map.fitBounds(bound);
 
}  




 function get_route(pos1,pos2) {

        	wayA = new google.maps.Marker({
			
	          position: pos1,
	          map: map
			  
	        });

	        wayB = new google.maps.Marker({
				
	          position: pos2,
	          map: map
			  
	        });
	          
			//Renderiza a rota, o draggable é diz se o waypoint é arrastavel ou não
			ren = new google.maps.DirectionsRenderer( {'draggable':false} );
			ren.setMap(map);
			ren.setPanel(document.getElementById("directionsPanel"));
			ser = new google.maps.DirectionsService();

			//Cria a rota, o DirectionTravelMode pode ser: DRIVING, WALKING, BICYCLING ou TRANSIT
			ser.route({ 'origin': wayA.getPosition(), 'destination':  wayB.getPosition(), 'travelMode': google.maps.DirectionsTravelMode.DRIVING},function(res,sts) {
				if(sts=='OK')ren.setDirections(res);	
			})		
	
        }
</script>
<style>
	#directionsPanel table{
		margin-top:0px !important;	
	}
	#directionsPanel *{
		font-size:12px !important;	
	}
</style>
<div id="mappy" style="float:left;width:68%; height:100%; margin-right:2%;"></div>
<div id="directionsPanel" style="float:right;width:30%;height: 400px; overflow:auto;"></div>
<div id="dummy"></div>
<script>
	<?php
		if($this->session->userdata('location') != ''){
	?>
	$(document).ready(function(){
		goma(<?php echo $this->session->userdata('lat'); ?>,<?php echo $this->session->userdata('lan'); ?>);
	});
	<?php
		} else {
	?>
	function getLocation() {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(showPosition,alternate);
		} else {
			alert("Geolocation is not supported by this browser.");
		}
	}
	function showPosition(position) {
		$('#dummy').load('<?php echo base_url(); ?>index.php/home/set_location/'+position.coords.latitude+'/'+position.coords.longitude);
		goma(position.coords.latitude,position.coords.longitude);
	}
	function alternate() {
		$('#dummy').load('<?php echo base_url(); ?>index.php/home/set_location_otherwise', function(responseTxt, statusTxt, xhr){
			var str = responseTxt.split('--');			
			var lati = str[0];
			var longi = str[1];
			goma(lati,longi);
        });
	}
	$(document).ready(function(){
		getLocation();
	});
	<?php
		}
	?>
</script>
