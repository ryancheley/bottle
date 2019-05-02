<%
    from bottle import request

    page_name = request['bottle.route'].rule

%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>{{title or 'No title'}}</title>
    <link href="/css/main.css" rel="stylesheet">
  </head>
  <body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">ProjectOnlineDiner</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        % if page_name == "/projectlist":
      <li class="nav-item active">
          % else:
      <li class="nav-item">
          % end
        <a class="nav-link" href="/projectlist">Project List</a>
      </li>
        % if page_name == "/about":
      <li class="nav-item active">
          % else:
      <li class="nav-item">
          % end
        <a class="nav-link" href="/about">About</a>
      </li>
        % if page_name == "/contact":
      <li class="nav-item active">
          % else:
      <li class="nav-item">
          % end
        <a class="nav-link" href="/contact">Contact</a>
      </li>
    </ul>
  </div>
</nav>