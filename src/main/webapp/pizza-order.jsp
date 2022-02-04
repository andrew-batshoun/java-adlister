<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/4/22
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form action="/pizza-order" method="POST">
    <label for="crust">Type of crust</label>
    <select name="crust" id="crust">
        <option value="none" selected disabled hidden>Choose</option>
        <option value="stuffed">Stuffed Crust</option>
        <option value="thin">Crispy Thin</option>
        <option value="tossed">Hand Tossed</option>
        <option value="ny">New York Style</option>
    </select>

    <label for="sauce">Type of Sauce</label>
    <select name="sauce" id="sauce">
        <option value="none" selected disabled hidden>Choose</option>
        <option value="original">Original</option>
        <option value="alfredo">Alfredo</option>
        <option value="bbq">Barbeque</option>
        <option value="ranch">Ranch</option>
    </select>

    <label for="size">Size</label>
    <select name="size" id="size">
        <option value="none" selected disabled hidden>Choose</option>
        <option value="original">Personal</option>
        <option value="alfredo">Small</option>
        <option value="bbq">Medium</option>
        <option value="ranch">Large</option>
    </select>
    <br>
    <br>
    <input type="checkbox" id="toppings1" name="toppings" value="pepperoni">
    <label for="toppings1"> Pepporoni</label><br>
    <input type="checkbox" id="toppings2" name="toppings" value="mushrooms">
    <label for="toppings2"> Mushrooms</label><br>
    <input type="checkbox" id="toppings3" name="toppings" value="canadian">
    <label for="toppings3"> Canadian Bacon</label><br>
    <input type="checkbox" id="toppings4" name="toppings" value="canadian">
    <label for="toppings4"> Canadian Bacon</label><br>
    <input type="checkbox" id="toppings5" name="toppings" value="pineapple">
    <label for="toppings5">Pineapple</label><br>


    <label for="address">Enter your Address</label>
    <input type="text" id="address" name="address">

    <input type="submit" value="Submit">




</form>


</body>
</html>
