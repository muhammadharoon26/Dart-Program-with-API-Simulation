import 'dart:async';
import 'dart:math';

// Simulates fetching weather data from an API
Future<Map<String, dynamic>> fetchWeatherData() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 3));
  
  // Simulate API response
  final random = Random();
  if (random.nextBool()) {
    return {
      'temperature': 25 + random.nextInt(10),
      'condition': ['Sunny', 'Cloudy', 'Rainy'][random.nextInt(3)],
      'humidity': 50 + random.nextInt(30),
    };
  } else {
    // Simulate API error
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  print('Fetching weather data...');
  
  try {
    final weatherData = await fetchWeatherData();
    print('Weather information:');
    print('Temperature: ${weatherData['temperature']}°C');
    print('Condition: ${weatherData['condition']}');
    print('Humidity: ${weatherData['humidity']}%');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Weather data fetch attempt completed.');
  }
}