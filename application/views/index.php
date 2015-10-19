<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>News Stand demo Site</title>
<link href="/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/assets/css/login_modal.css" rel="stylesheet">
<link href="/assets/css/site.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
 <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
 <script src="/assets/js/bootstrap.min.js"></script>
 <script language="javascript" src="/assets/js/login_modal.js"></script>
 <main>

<div class="navbar-wrapper">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">My News Site</a>
                            
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="/" class="">Home</a></li>
                            </ul>
                        {loggin_nav_var}
                        </div>
                    </div>
                </nav>
            </div>
        </div>
<div class="container">
<br><br>
{content}
</div>    
  </main>
 {login_modal}

</body>
</html>