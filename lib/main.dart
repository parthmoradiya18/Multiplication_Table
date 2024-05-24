import 'package:flutter/material.dart';
import 'package:multiplication_table/View/HomePage.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4  ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      },));
    });
    return SafeArea(child: Scaffold(
      body:
      Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/images/parth.jpg')),
            ),
            SizedBox(height: 50,),
            Text('APP Store',style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    ));
  }
}
