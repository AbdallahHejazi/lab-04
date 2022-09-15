import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> { 
   String r1 = "";
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Container(
        height: 200,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/564x/ae/47/69/ae4769f6d3e66c9234abae657bd09f00.jpg"),
          ),
        ),),

            Container(
              child: Text("Please select the branch",style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 4, 127, 227),),),
            ),
            RadioListTile(
                title: Text("ITALY"),
                subtitle: Text("rome"),
                secondary: Icon(Icons.add_location_outlined),
                value: "rome",
                groupValue: r1,
                onChanged: ((Val) {
                  setState(() {
                    r1 = Val.toString();
                  });
                })),

            RadioListTile(
                title: Text("UNITED KINGDOM"),
                subtitle: Text("london"),
                secondary: Icon(Icons.add_location_outlined),
                value: "london",
                groupValue: r1,
                onChanged: ((Val) {
                  setState(() {
                       r1 = Val.toString();
                  });
               
                })),

                  RadioListTile(
                title: Text("UNITED ARAB EMIRATES"),
                subtitle: Text("dubai"),
                secondary: Icon(Icons.add_location_outlined),
                value: "dubai",
                groupValue: r1,
                onChanged: ((Val) {
                  setState(() {
                       r1 = Val.toString();
                  });
               
                })),




            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 4, 127, 227),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  });
                }),
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
