<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="/ProductDiscountCalculatorServlet" method="post">
    <h2>Product Description</h2>
    <input type="text" name="Product Description">
    <h2>List Price</h2>
    <input type="text" name="List Price">
    <h2>Discount Percent</h2>
    <input type="text" name="Discount Percent">
    <br> <br>
    <button>Calculate Discount</button>
</form>
</body>
</html>