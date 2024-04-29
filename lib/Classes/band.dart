import 'package:swift/Classes/sensor.dart';

class Band {
  static final Band _instance = Band._internal();
  int id = 0;
  String status;
  List<Sensor> sensors = [];
  double batteryLevel = 100.0;
  String firmwareVersion = "1.0.0";
  DateTime lastSyncTime = DateTime.now();

  factory Band() {
    return _instance;
  }

  Band._internal() : status = "off";

  void activateSensor(Sensor sensor) {
    sensors.add(sensor);
  }

  void deactivateSensor(Sensor sensor) {
    sensors.remove(sensor);
  }
}
