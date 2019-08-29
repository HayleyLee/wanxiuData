<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>nav</title>
<style>
body {
  background: #ededed;
  padding: 0 20px;
  margin: 0;
  font-family: 'Open Sans', Arial, sans-serif;
}
.mynav{
  width: 100%;
}
.mynav ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  list-style-type: none;
  padding: 0;
  margin-top: 0;
}

.mynav li:not(:last-child) {
  margin-right: 20px;
}

.mynav a {
  display: block;
  font-size: 20px;
  color: white;
  text-decoration: none;
  padding: 7px 15px;
}

.target {
  position: absolute;
  border-bottom: 4px solid transparent;
  z-index: -1;
  -webkit-transform: translateX(-60px);
          transform: translateX(-60px);
}

.mynav a,
.target {
  -webkit-transition: all .35s ease-in-out;
  transition: all .35s ease-in-out;
}
</style>
</head>
<body style="background-color: white;">
<nav class="mynav">
  <img src="static/indexStatic/images/123.png">
</nav>
<span class="target"></span>
</body>
</html>