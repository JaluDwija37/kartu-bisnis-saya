import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void myDialog(BuildContext ctx){
    showDialog(context: ctx, builder: (BuildContext konteks){
      return AlertDialog(
        title: Text('Hubungi Kami'),
        content: Text('Hubungi Kami di jaludwija37@gmail.com'),
        actions: [
          ElevatedButton(onPressed: ()=> Navigator.of(konteks).pop(), child: Text('Close'))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Kartu Bisnis Saya"),),
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Adecya Jalu Mahadwija'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,right: 8.0,left: 8.0),
                      child: Text('21201032'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/jalu.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Rejoin.inc'),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/Logo.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(onPressed: ()=>myDialog(context), child: Text('Kontak Kami'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
