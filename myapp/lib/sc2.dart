import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc2 extends StatefulWidget {
  const sc2({super.key});

  @override
  State<sc2> createState() => _sc2State();
}

class _sc2State extends State<sc2> {
  String v1 = "";
  bool top1 = false;
  bool top2 = false;
  bool top3 = false;
  List myItems = ["Man", "Woman", "Children"];
  String selctedItem = "Man";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 600,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/ec/a7/28/eca728c0bf8dc7c14e8c43d7af4985b1.jpg"),
                ),
              ),
            ),
            Text(
              "please select",
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 4, 127, 227)),
            ),
            DropdownButton(
                value: selctedItem,
                items: myItems
                    .map((e) => DropdownMenuItem(value: e, child: Text("${e}")))
                    .toList(),
                onChanged: ((val) {
                  setState(() {
                    selctedItem = val.toString();
                  });
                })),
            CheckboxListTile(
                secondary: Icon(Icons.favorite),
                title: Text("top clothes"),
                subtitle: Text("Hats,Sweatshirst,T-shirts"),
                value: top1,
                onChanged: (val) {
                  setState(() {});
                  top1 = val!;
                }),
            CheckboxListTile(
                secondary: Icon(Icons.favorite),
                title: Text("bottom clothes"),
                subtitle: Text("trouser,shorts"),
                value: top2,
                onChanged: (val) {
                  setState(() {});
                  top2 = val!;
                }),
            CheckboxListTile(
                secondary: Icon(Icons.favorite),
                title: Text("shoes"),
                subtitle: Text("sandals,boot"),
                value: top3,
                onChanged: (val) {
                  setState(() {});
                  top3 = val!;
                }),


            Container(
              child: Text("payment method",style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 4, 127, 227)),),
            ),
            RadioListTile(
                title: Text("Visa"),
                subtitle: Text(""),
                secondary: Icon(Icons.payment),
                value: "v",
                groupValue: v1,
                onChanged: ((Val) {
                  setState(() {
                    v1 = Val.toString();
                  });
                })),
            RadioListTile(
                title: Text("cash"),
                subtitle: Text(""),
                secondary: Icon(Icons.payments_outlined ),
                value: "vv",
                groupValue: v1,
                onChanged: ((Val) {
                  setState(() {
                    v1 = Val.toString();
                  });
                })),
                RadioListTile(
                title: Text("paypal"),
                subtitle: Text(""),
                secondary: Icon(Icons.paypal),
                value: "vvv",
                groupValue: v1,
                onChanged: ((Val) {
                  setState(() {
                    v1 = Val.toString();
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
