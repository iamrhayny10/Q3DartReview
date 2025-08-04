void main() {
  print('=== Temperature Converter ===');

  double celsius = 25.0;
  double fahrenheit = 100.0;

  double convertedToF = celsiusToFahrenheit(celsius);
  print('${celsius}°C = ${convertedToF.toStringAsFixed(1)}°F');

  // Convert Fahrenheit to Celsius
  double convertedToC = fahrenheitToCelsius(fahrenheit);
  print('${fahrenheit}°F = ${convertedToC.toStringAsFixed(1)}°C');

  // Describe weather conditions
  describeWeather(celsius);
  describeWeather(convertedToC);
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void describeWeather(double celsius) {
  String description;
  String activity;

  if (celsius < 10) {
    description = "Cold";
    activity = " - Wear warm clothes.";
  } else if (celsius < 25) {
    description = "Cool";
    activity = " - Good for light outdoor activities.";
  } else if (celsius < 32) {
    description = "Warm";
    activity = " - Perfect for a walk or jog.";
  } else {
    description = "Extremely Hot";
    activity = " - Stay hydrated and avoid sun exposure during peak hours!";
  }

  print('${celsius.toStringAsFixed(1)}°C: $description$activity');
}
