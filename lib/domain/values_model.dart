import 'package:flutter/material.dart';

class GreenHouseMeasurement {
  Temperature temp;
  Humidity humidity;
  WaterLevel waterLevel;
  Brightness brightness;

  GreenHouseMeasurement({
    this.temp,
    this.humidity,
    this.waterLevel,
    this.brightness
  });

  factory GreenHouseMeasurement.fromJson(Map<String, String> json) {
    return GreenHouseMeasurement(
      temp: Temperature(temp: double.parse(json["temperature"])),
      humidity: Humidity(hum: double.parse(json["humidity_D"])),
      waterLevel: WaterLevel(level: double.parse(json["waterlevel"])),
      brightness: Brightness(brightness: double.parse(json["light"])),
    );
  }
}

class Temperature {
  double temp;
  Temperature({@required this.temp}) : assert(temp > 0 && temp < 35);
}

class Humidity {
  double hum;
  Humidity({@required this.hum}) : assert(hum > 0 && hum < 100);
}

class WaterLevel {
  double level;
  WaterLevel({@required this.level}) : assert(level > 0 && level < 100);
}

class Brightness {
  double brightness;
  Brightness({@required this.brightness}) : assert(brightness > 0 && brightness < 35);
}