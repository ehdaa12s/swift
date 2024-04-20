import 'package:flutter/material.dart';
import 'package:swift/business_layer/data_for_data_screen.dart';

class DataScreen extends StatelessWidget {
  DataScreen({Key? key}) : super(key: key);
  final data = Data().data;
  final images = Data().images;
  final routs = Data().routs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(' All Health Data',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          var key = data.keys.elementAt(index);
          var value = data[key];
          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            selectedColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            leading: Image.asset(images[key]!),
            title: Text(key,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(value!, style: const TextStyle(fontSize: 15)),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => routs[key]! as Widget,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
