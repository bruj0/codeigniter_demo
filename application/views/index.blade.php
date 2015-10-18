<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Demo News Site</title>

    
	<link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet">
  </head>

  <body>
  <nav class="navbar navbar-default">
	<div class="container-fluid">
	  <div class="navbar-header">
		<a class="navbar-brand" href="#">Tasks</a>
	  </div>
	  <div class="nav navbar-nav navbar-right">
		  <li><a href="#">Home</a></li>
		  <li><a href="#">Tasks</a></li>
	  </div>
	</div>
  </nav>
  
  <main>
	  <div class="container">
		  {{content}}
	  </div>
  </main>

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>	  
	@stack('scripts')
  </body>
</html>