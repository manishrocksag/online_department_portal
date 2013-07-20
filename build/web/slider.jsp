<html>
<head>
<script type="text/javascript" src="js/sliderman.1.3.7.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/sliderman.css" />
	<style type="text/css">
	.auto-style1 {
		margin-top: 16;
	}
	</style>
	</head>

	<!-- /sliderman.js -->
<body style="z-index: 1; top: 180px; left: 100px;">
    
    <div id="wrapper">

		<div id="examples_outer">

			<div id="slider_container_2">

				<div id="SliderName_2" class="SliderName_2">
					<img src="img/1.jpg" width="700" height="450" alt="Demo2 first" title="Demo2 first" usemap="#img1map" />
					<map name="img1map">
						
					</map>

					<img src="img/2.jpg" width="700" height="450" alt="Demo2 second" title="Demo2 second" />
					
					<img src="img/3.jpg" width="700" height="450" alt="Demo2 third" title="Demo2 third" />
					
					<img src="img/4.jpg" width="700" height="450" alt="Demo2 fourth" title="Demo2 fourth" />
					
				</div>
				<br><br><br><br>
				<div class="c"></div>
				<div id="SliderNameNavigation_2" style="height: 66px" class="auto-style1"></div>
				<div class="c"></div>

				<script type="text/javascript">
					effectsDemo2 = 'rain,stairs,fade';
					var demoSlider_2 = Sliderman.slider({container: 'SliderName_2', width: 700, height: 450, effects: effectsDemo2,
						display: {
							autoplay: 3000,
							loading: {background: '#000000', opacity: 0.5, image: 'img/loading.gif'},
							buttons: {hide: true, opacity: 1, prev: {className: 'SliderNamePrev_2', label: ''}, next: {className: 'SliderNameNext_2', label: ''}},
							description: {hide: true, background: '#000000', opacity: 0.4, height: 50, position: 'bottom'},
							navigation: {container: 'SliderNameNavigation_2', label: '<img src="img/clear.gif" />'}
						}
					});
				</script>

				<div class="c"></div>
			</div>
			<div class="c"></div>
		</div>

		<div class="c"></div>
	</div>
</body>
</html>