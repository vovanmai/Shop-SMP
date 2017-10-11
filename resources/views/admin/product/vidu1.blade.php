<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="{{ url('resources/assets/templates/admin/assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ url('resources/assets/templates/admin/assets/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <p><br /></p>
    <div class="container">
        <div class="row" >
          <div class="col-md-12" >
            <div class="panel panel-default">
              <div class="panel-heading"><b><i>Data Table</i></b></div>
                <div class="panel-body">
                <table class="table table-striped table-bordered table table-hover" id="mydata">
                  <thead>
                      <tr>
                          <th>ID</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Phone </th>
                          <th>Adress</th>
                          
                      </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Võ Văn Mả11</td>
                      <td>vovanmai.dt3@gmail.com1</td>
                      <td>09863084601</td>
                      <td>Quảng Nam1</td>
                    </tr>
                     <tr>
                      <td>2</td>
                      <td>Võ Văn Mải2</td>
                      <td>vovanmai.dt3@gmail.com2</td>
                      <td>09863084602</td>
                      <td>Quảng Nam2</td>
                    </tr>
                     <tr>
                      <td>3</td>
                      <td>Võ Văn Mải2</td>
                      <td>vovanmai.dt3@gmail.com2</td>
                      <td>09863084602</td>
                      <td>Quảng Nam2</td>
                    </tr>
                  </tbody>

                  <tfoot>
                    <tr></tr>
                  </tfoot>

                </table>
                </div>
            </div>    
        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="{{ url('resources/assets/templates/admin/assets/js/jquery.js')}}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{{ url('resources/assets/templates/admin/assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('resources/assets/templates/admin/assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('resources/assets/templates/admin/assets/js/dataTables.bootstrap.min.js') }}"></script>
    <script>
      $("#mydata").dataTable();
    </script>
  </body>
</html>