import 'package:flutter/material.dart';
import 'package:swift/screens/all_data_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
   _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.home, size: 45, color: Colors.blue),
                Image(
                    image: AssetImage('assets/images/Avatar 19.png'),
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Overview',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Container(
                  width: 120,
                  height: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.rocket_launch, color: Colors.purple[300]),
                      const SizedBox(width: 2),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataScreen()),
                          );
                        },
                        child: Text('All Data',
                            style: TextStyle(color: Colors.purple[300])),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(6),
              width: 350.0,
              height: 144.0,
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: // overview for health score and other details
                  const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Health Score',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.sports_score_rounded,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                      ' Based on overviews health tracking '
                      'your health score is 80',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            const SizedBox(height: 20),
          Row(
              children: [
                const Text("Highlights",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
               const  SizedBox(width: 130),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataScreen()),
                    );
                  },
                  child:const  Text('view more ',
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.normal)),
                ),
               const  Icon(Icons.arrow_forward_ios, size: 10, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 20),
             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
               child:
             Row(


              children: [
                Container(
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
                        image: AssetImage('assets/images/overview_steps.png'),
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
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(6),
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: // overview for health score and other details
                      const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        alignment: Alignment.topRight,
                        image: AssetImage(
                            'assets/images/Cycle Tracking _over.png'),
                        width: 45,
                        height: 45,
                      ),
                      SizedBox(height: 20),
                      Text(" Heart Rate",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(' 80 bpm',
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
                ),
              ],
            ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[900],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: // overview for health score and other details
                      const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        alignment: Alignment.topRight,
                        image: AssetImage('assets/images/Sleep_over.png'),
                        width: 45,
                        height: 45,
                      ),
                      SizedBox(height: 20),
                      Text(" Sleep",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(' 7h 30m',
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
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(6),
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: // overview for health score and other details
                      const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        alignment: Alignment.topRight,
                        image: AssetImage('assets/images/Nutrition.png'),
                        width: 45,
                        height: 45,
                      ),
                      SizedBox(height: 20),
                      Text(" Netrition",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(' 80 kg',
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
                ),
              ],
            ),
            ),
            const SizedBox(height: 20),
            const Row(children: [
              Text("This week report",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(width: 80),
              Text("view more ",
                  style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
              Icon(Icons.arrow_forward_ios, size: 10, color: Colors.blue),
            ]),
           const SizedBox(height: 20),
            Row(



              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    width: 140.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: // overview for health score and other details
                        const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text('👣Steps',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(' 797,978 steps',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    width: 140.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: // overview for health score and other details
                        const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text('💪Workout',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(' 6 h 30 m',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(

              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    width: 140.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: // overview for health score and other details
                        const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text('💧Water',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(' 12.5 L',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),

                Card(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    width: 140.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: // overview for health score and other details
                        const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text('😴 Sleep',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(' 797,978 steps',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
