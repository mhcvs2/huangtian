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
<div class="container-fluid">
    <h1>My Table</h1>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>名称</th>
                <th>城市</th>
                <th>邮编</th>
            </tr>
        </thead>
        <tbody>
            {{ range $i, $tr := .tables }}
            <tr>
                {{ range $i2, $td := $tr }}
                <td>{{ $td }}</td>
                {{ end }}
            </tr>
            {{ end }}
        </tbody>
    </table>
</div>
</body>
</html>
