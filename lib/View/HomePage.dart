import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController txtname = TextEditingController();

final key = GlobalKey<FormState>();
int number = 1;
List<int> table = [];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade300,
          centerTitle: true,
          title: Text(
            "Multiplication Table",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: txtname,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Enter Number",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  primary: Colors.
                    lime.shade800,
                ),

                  onPressed: () {
                    setState(() {
                      number = int.parse(txtname.text);
                      key.currentState!.validate();
                      for (int i = 1; i <= 10; i++) {
                        table.add(i);
                      }
                      print(number);
                      key.currentState!.deactivate();
                    });
                  },
                  child: Text("Submit"),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,),
                  child: Container(
                    height: 350,
                    width: 180,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: ListView.builder(
                        itemBuilder: (context, index) => Text(
                            "${number} * ${index + 1} = ${number * (index + 1)}",
                            style: TextStyle(fontSize: 25)),
                        itemCount: 10,
                        shrinkWrap: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
