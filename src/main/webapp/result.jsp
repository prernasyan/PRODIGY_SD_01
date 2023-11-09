
<%
String unit = (String)request.getAttribute("originalUnit");
double temperature = (Double) request.getAttribute("temperature");
double convertedCelsius = (Double) request.getAttribute("convertedCelsius");
double convertedFahrenheit = (Double) request.getAttribute("convertedFahrenheit");
double convertedKelvin = (Double) request.getAttribute("convertedKelvin");

%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="result.css">
    <title>Temperature Conversion Result</title>
</head>
<body>
    <h1>Temperature Conversion Result</h1>
    
   <div class="results">
   
    <p id="original">Original Temperature: <%= temperature %> <br> 
    		Original Unit: <%= unit %> </p>
    	   
    <p id="bold"> <b> CONVERTED TEMPERATURES: </b><br> <br>
    
    <% if(unit.equals("Celsius"))
    { %> Fahrenheit: <%= convertedFahrenheit %> &deg;F<br>
    	Kelvin: <%= convertedKelvin %> K <br>
    	
    <%}else if(unit.equals("Fahrenheit"))
    {%> Celsius: <%= convertedCelsius %> &deg;C<br>
		Kelvin: <%= convertedKelvin %> K<br>
			
    <%}else if(unit.equals("Kelvin"))
    {%> Celsius: <%= convertedCelsius %> &deg;C<br>
		Fahrenheit: <%= convertedFahrenheit %> &deg;F<br>
			
    <%}%>
    
    </p>
    <br> <br>
    <a href="index.jsp">Convert Another Temperature</a>
   
   
   </div>
</body>
</html>
