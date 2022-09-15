import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/sc1.dart';
import 'package:myapp/sc2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/564x/4a/49/13/4a49132036103efb7e6f8eb924b19945.jpg"),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/a2/c0/33/a2c033a489dc4a9e261fa324609c7f73.jpg"),
                ),
              ),
            ),
            Text(
              "Fashion House Rome",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
           
            ElevatedButton.icon(
                icon: Icon(
                  color: Color.fromARGB(255, 4, 127, 227),
                  Icons.star,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    shadowColor:Color.fromARGB(255, 4, 127, 227),
                    onPrimary:Color.fromARGB(255, 4, 127, 227),
                    primary: Colors.black,
                    elevation: 20),
                label: Text(
                  "order",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc2();
                    }));
                  });
                }),

                  ElevatedButton.icon(
                icon: Icon(
                  color: Color.fromARGB(255, 4, 127, 227),
                  Icons.star,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 4, 127, 227),
                    onPrimary: Color.fromARGB(255, 4, 127, 227),
                    primary: Colors.black,
                    elevation: 20),
                label: Text(
                  "branches",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc1();
                    }));
                  });
                }),
          ],
        ),
      ),
    );
  }
}
