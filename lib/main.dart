import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Modul 2 : Basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "Ganjil";
  String textPercobaan2 = "";
  String kelipatan3 = "";
  int hitung = 0;
  int angka = 2;
  String hasilBilanganPrima = "";

  void _incrementCounter() {
    setState(() {
      _counter++;

      // Percobaan 1
      if(_counter > 20){
        _counter = 1;
      }

    //  Percobaan 2
      if(_counter%2 == 0){
        _text = "Genap";
      }else{
        _text = "Ganjil";
      }

    //  Percobaan 3
      textPercobaan2 = "";
      for(int i = 0; i <= _counter; i++){
        if(i%2 != 0){
          textPercobaan2 += "${i},";
        }
      }

    //  Latihan
      kelipatan3 = "";
      for(int i = 1; i <= _counter; i++){
        if(i%3 == 0 && i%2 == 0){
          kelipatan3 += "$i,";
        }
      }

    //  Tugas
      hasilBilanganPrima = "";
      for(int i = 0; i <= _counter; i++){
        if(prima(i)){
          hasilBilanganPrima += "$i,";
        }
      }
    });
  }
  // dkwjhdjw
  bool prima(int angka) {
    if (angka <= 1) {
      return false;
    }

    for (int i = 2; i <= sqrt(angka); i++) {
      if (angka % i == 0) {
        return false;
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Percobaan 1
            Container(
              width: 300,
              height: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Percobaan 1", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$_counter", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))
                    ],
                  )
                ],
              ),
            ),

            // Percobaan 2
            Container(
              width: 300,
              height: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Percobaan 2", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$_counter"),
                      Text(_text),
                    ],
                  )
                ],
              ),
            ),

            // Percobaan 3
            Container(
              width: 300,
              height: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Percobaan 3", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ganjil :"),
                      Text("$textPercobaan2"),
                    ],
                  )
                ],
              ),
            ),

            // Latihan
            Container(
              width: 300,
              height: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Latihan", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Bilangan genap kelipatan 3 :"),
                  Text("$kelipatan3"),
                ],
              ),
            ),

          //  Tugas
            Container(
              width: 300,
              height: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Tugas", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Bilangan prima :"),
                  Text("$hasilBilanganPrima"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
