import 'package:swift/Classes/band.dart';
import 'package:swift/Classes/sensor.dart';

abstract class BandDecorator {
  Band _band;

  BandDecorator(this._band);

  void activateSensor(Sensor sensor) {
    _band.activateSensor(sensor);
  }

  void deactivateSensor(Sensor sensor) {
    _band.deactivateSensor(sensor);
  }
}
