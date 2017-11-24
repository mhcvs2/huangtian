<!DOCTYPE html>

<html>
<head>
  <title>MHC TEST</title>
  <meta http-equiv="refresh" content="300">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
  <script src="/static/js/jquery.min.js"></script>
  <script src="/static/js/bootstrap.min.js"></script>
  <style>
    body {
      padding-top: 50px;
    }

    tr.cluster {
      cursor: pointer;
    }
  </style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container" style="width: 90%">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Index</a>
    </div>
  </div>
  <!-- /.container -->
</div>

<div class="container" style="height:50px">
</div>

<div class="container" style="width: 90%">
	<div class="row">
		<div class="col-xs-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">面板标题</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="btn-group-vertical">
                                <button type="button" class="btn btn-default" id="stop" onclick="stop()">stop</button>
                                <button type="button" class="btn btn-default">按钮 2</button>
                                <button type="button" class="btn btn-default">按钮 3</button>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="btn-group-vertical">
                                <button type="button" class="btn btn-default">按钮 1</button>
                                <button type="button" class="btn btn-default">按钮 2</button>
                                <button type="button" class="btn btn-default">按钮 3</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
		<div class="col-xs-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">面板标题</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>
		</div>
		<div class="col-xs-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">面板标题</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
    function stop() {
        $.post("/docker/stop",
           {},
           function(data) {
               alert(JSON.stringify(data));
            });
    }
</script>
</html>
