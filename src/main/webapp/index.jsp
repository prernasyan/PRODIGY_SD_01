<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="index.css">
<title>Temperature Converter</title>
</head>
<body>

	<h1>Temperature Converter</h1>
	<div class="form">
	<form action="ConvertTemperature" method="post">
		<label for="temperature" >Enter temperature value:</label> <br> <br><input
			type="number" step="0.01" name="temperature" placeholder="Enter here" required> <br><br>
		<label for="originalUnit">Select original unit of measurement:</label>
		<br> <br>
		<select name="originalUnit">
			<option value="Celsius">Celsius</option>
			<option value="Fahrenheit">Fahrenheit</option>
			<option value="Kelvin">Kelvin</option>	
		</select>
		<br> <br>
		<input id="button" type="submit" value="Convert"> 
		<input id="button" type="reset" value="Reset"> 
	</form>
	</div>


</body>
</html>
