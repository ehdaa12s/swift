import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DatabaseReference _databaseReference;
  bool _isDeviceOn = false;

  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance.ref();
    _databaseReference
        .child('isDeviceOn')
        .onValue
        .listen((DatabaseEvent event) {
      setState(() {
        _isDeviceOn = event.snapshot.value as bool;
      });
    });
  }

  @override
  void dispose() {
    _databaseReference
        .child('isDeviceOn')
        .onValue
        .listen((DatabaseEvent event) {
      setState(() {
        _isDeviceOn = event.snapshot.value as bool;
      });
    });
    super.dispose();
  }

  Future<void> _updateDeviceState(bool value) async {
    try {
      await _databaseReference.child('isDeviceOn').set(value);
    } catch (e) {
      print('Error updating device state: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isDeviceOn ? 'Device is ON' : 'Device is OFF',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await _updateDeviceState(false);
              },
              child: const Text('Turn OFF'),
            ),
            ElevatedButton(
              onPressed: () async {
                await _updateDeviceState(true);
              },
              child: const Text('Turn ON'),
            ),
          ],
        ),
      ),
    );
  }
}
