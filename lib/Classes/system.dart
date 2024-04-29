import 'package:swift/Classes/band.dart';
import 'package:swift/Classes/concerte_band.dart';
import 'package:swift/Classes/data.dart';
import 'package:swift/Classes/notification.dart';
import 'package:swift/Classes/sensor.dart';
import 'package:swift/Classes/user.dart';
import 'package:swift/Classes/value.dart';

class System {
  static final System _instance = System._internal();
  List<User> users = [];
  List<Data> data = [];
  List<Notification> notifications = [];

  factory System() {
    return _instance;
  }

  System._internal();

  void addUser(User user) {
    users.add(user);
  }

  void removeUser(User user) {
    users.remove(user);
  }

  void addData(Data data) {
    this.data.add(data);
  }

  void removeData(Data data) {
    this.data.remove(data);
  }

  void sendNotification(Notification notification) {
    notifications.add(notification);
  }
}

void main() {
  // Create a user
  User user = User(1, "John Doe");

  // Create a system
  System system = System();

  // Add user to system
  system.addUser(user);

  // Create a band
  Band band = Band();

  // Create sensors
  Sensor sensor1 = Sensor(1, "Sensor 1", "Temperature");
  Sensor sensor2 = Sensor(2, "Sensor 2", "on ");

  // Activate sensors
  band.activateSensor(sensor1);
  band.activateSensor(sensor2);

  // Create a notification
  Notification notification =
      Notification(1, "Hello, world!", "INFO", DateTime.now());

  // Send notification
  system.sendNotification(notification);

  // Create data
  Data data = Data(1, DateTime.now());

  // Add values to data
  data.addValue(Value(1, 10.5));
  data.addValue(Value(2, 20.5));

  // Add data to system
  system.addData(data);

  // Create a concrete band
  ConcreteBand concreteBand = ConcreteBand(band);

  // Activate sensor using concrete band
  concreteBand.activateSensor(sensor1);
}
