class Notification {
  int _id;
  String _message;
  String _type;
  DateTime _timestamp;

  Notification(this._id, this._message, this._type, this._timestamp);

  void markAsRead() {
    print("Notification marked as read");
  }
}