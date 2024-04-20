import 'package:flutter/material.dart';

class ContianerForHigligtes extends StatelessWidget {
  const ContianerForHigligtes(
      {Key? key,
      required this.title,
      required this.value,
      required this.image,
      required this.route})
      : super(key: key);

  final String title;
  final String value;
  final String image;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: // overview for health score and other details
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            alignment: Alignment.topRight,
            image: AssetImage(  "assets/images/heart.png"),
            width: 45,
            height: 45,
          ),
          SizedBox(height: 20),
          Text(" Steps",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(' 11,857 steps',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
          Text(" updated 2 hours ago",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.white))
        ],
      ),
    );
  }
}
