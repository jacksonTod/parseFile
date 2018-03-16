<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="/resource/jquery.min.js"></script>
</head>
<body>
<form action="/show.html" method="post" target="_blank">
    <input type="hidden" value="" id="test" name="type">
</form>
<span onclick="test('1')">word</span><br>
<span onclick="test('2')">ppt</span><br>
<span onclick="test('3')">excel</span><br>

<script>
    function test(type){
        $("#test").val(type)
        $("form").submit();
    }
</script>
</body>
</html>
