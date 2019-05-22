<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Material Kit by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/material-kit.css?v=1.2.1" rel="stylesheet"/>

</head>

<body class="index-page">
	
	<div class="page-header header-filter clear-filter" data-parallax="true" style="background-image: url('assets/img/bg0.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="brand">
						<h1>My Blog

						</h1>


					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container">
	            <div class="title">
	                <h2>My Post</h2>
	            </div>

	<!--                 buttons -->

	<!--                 end buttons		         -->
	            <div class="space-50"></div>


	<!--                 inputs -->

	{% for post in postings %}

		<div class="col-lg-4 col-sm-4">
			<h3>{{  post.judul_post }}</h3>
			{{  post.isi_post }}
			<br>by : {{  post.nama_poster }}
			<br><br>
			<h3>comment:</h3>
			{% for comment in post.comment %}
				{{ comment.komentator }}: {{ comment.isi_komen }}
				<br>
			{% endfor %}
			<br>
			<form method="post" action="/posting/comment">
				<div class="form-group label-floating">
					<label class="control-label">Nama</label>
					<input type="text" name="komentator" class="form-control">
				</div>
				<input type="hidden" name="post_id" value="{{ post.id_post }}">
				<div class="form-group label-floating">
					<label class="control-label">Komentar</label>
					<input type="text" name="isi_komen" class="form-control">

				</div>

				<button class="btn btn-primary" type="submit">Tambahkan Komentar</button>
			</form>
		</div>

	{% endfor %}

	  <form action="/posting/posting" method="post" class="col-lg-4 col-sm-4">
		  <div class="form-group label-floating">
			  <label class="control-label">Nama</label>
			  <input type="text" name="nama_poster" class="form-control">
		  </div>
		  <div class="form-group label-floating">
			  <label class="control-label">Judul Postingan</label>
			  <input type="text" name="judul_post" class="form-control">
		  </div>
		  <div class="form-group label-floating">
			  <label class="control-label">Isi Postingan</label>
			  <input type="text" name="isi_post" class="form-control">
		  </div>
          <button class="btn btn-primary" type="submit">Tambah Postingan</button>
	  </form>
  <div class="col-lg-4 col-sm-4">

  </div>


	<!--                 end inputs -->

				<div class="space-70"></div>

	<!--                 textarea/checkbox/radio/toggle -->

									<!-- If you want to add a checkbox to this form, uncomment this code -->


<!--  End Modal -->


</body>
	<!--   Core JS Files   -->
	<script src=/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src=/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src=/assets/js/material.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src=/assets/js/moment.min.js"></script>

	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src=/assets/js/nouislider.min.js" type="text/javascript"></script>

	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src=/assets/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src=/assets/js/bootstrap-selectpicker.js" type="text/javascript"></script>

	<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
	<script src=/assets/js/bootstrap-tagsinput.js"></script>

	<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src=/assets/js/jasny-bootstrap.min.js"></script>

	<!-- Plugin For Google Maps -->
	<script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>



	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src=/assets/js/material-kit.js?v=1.2.1" type="text/javascript"></script>

	<!-- Fixed Sidebar Nav - JS For Demo Purpose, Don't Include it in your project -->
	<script src="assets/assets-for-demo/modernizr.js" type="text/javascript"></script>
	<script src="assets/assets-for-demo/vertical-nav.js" type="text/javascript"></script>

	<script type="text/javascript">

		$(document).ready(function(){
			var slider = document.getElementById('sliderRegular');

	        noUiSlider.create(slider, {
	            start: 40,
	            connect: [true,false],
	            range: {
	                min: 0,
	                max: 100
	            }
	        });

	        var slider2 = document.getElementById('sliderDouble');

	        noUiSlider.create(slider2, {
	            start: [ 20, 60 ],
	            connect: true,
	            range: {
	                min:  0,
	                max:  100
	            }
	        });



			materialKit.initFormExtendedDatetimepickers();

		});
	</script>
</html>
