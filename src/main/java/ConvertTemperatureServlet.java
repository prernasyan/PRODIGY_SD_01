import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ConvertTemperature")
public class ConvertTemperatureServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double temperature = Double.parseDouble(request.getParameter("temperature"));
        String originalUnit = request.getParameter("originalUnit");

        double convertedCelsius = 0.0;
        double convertedFahrenheit = 0.0;
        double convertedKelvin = 0.0;

        if (originalUnit.equals("Celsius")) {
            convertedCelsius = temperature;
            convertedFahrenheit = (temperature * 9/5) + 32;
            convertedKelvin = temperature + 273.15;
        } else if (originalUnit.equals("Fahrenheit")) {
            convertedCelsius = (temperature - 32) * 5/9;
            convertedFahrenheit = temperature;
            convertedKelvin = (temperature - 32) * 5/9 + 273.15;
        } else if (originalUnit.equals("Kelvin")) {
            convertedCelsius = temperature - 273.15;
            convertedFahrenheit = (temperature - 273.15) * 9/5 + 32;
            convertedKelvin = temperature;
        } 

        request.setAttribute("temperature", temperature);
        request.setAttribute("originalUnit", originalUnit);
        request.setAttribute("convertedCelsius", convertedCelsius);
        request.setAttribute("convertedFahrenheit", convertedFahrenheit);
        request.setAttribute("convertedKelvin", convertedKelvin);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
