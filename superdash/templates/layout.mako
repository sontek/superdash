<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Welcome to superdash!</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="${request.static_url('superdash:static/css/bootstrap.css')}">
        <link rel="stylesheet" href="${request.static_url('superdash:static/css/font-awesome.css')}">
        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="${request.static_url('superdash:static/css/bootstrap-theme.css')}">
        <link rel="stylesheet" href="${request.static_url('superdash:static/css/main.css')}">

        <script src="${request.static_url('superdash:static/js/vendor/modernizr-2.6.2.min.js')}"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">superdash</a>
        </div>
      </div>
    </div>
    ${self.body()}
    <div class="container">
      <hr>
      <footer>
        <p>&copy; superdash 2014</p>
      </footer>
    </div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
    <script>window.jQuery || document.write('<script src="${request.static_url('superdash:static/js/vendor/jquery-1.11.1.js')}"><\/script>')</script>
    <script src="${request.static_url('superdash:static/js/vendor/bootstrap.js')}"></script>
    </body>
</html>
