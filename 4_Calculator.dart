import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeScreen(),
    );
  }
}
class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  dynamic result = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController numberA = TextEditingController();
    TextEditingController numberB = TextEditingController();

    void checkPrimeNumber() {
      int number = int.tryParse(numberA.text) ?? 0;}

    void Cong() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        result = a + b;
      });
    }

    void Tru() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        result = a - b;
      });
    }

    void Nhan() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        result = a * b;
      });
    }

    void Chia() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        if(b == 0) {
          result = 'vo nghiem';
        }
        else { result = a/b;}
      });
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text('Caculator'),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.pinimg.com/564x/c9/68/a2/c968a25923c0c4206bc1517e6ffcfcff.jpg',
                  width: 150,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: numberA,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Nhập số A',
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: numberB,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Nhập số B',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text (
                  'Ket qua $result',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    SizedBox( //height of button
                        width:80, //width of button
                        child:ElevatedButton(
                            onPressed: Cong,
                            child: Text('+')
                        )
                    ),
                    SizedBox( //height of button
                        width:80, //width of button
                        child:ElevatedButton(
                            onPressed: Tru,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Background color
                            ),
                            child: Text('-')
                        )
                    ),
                    SizedBox( //height of button
                        width: 80, //width of button
                        child:ElevatedButton(
                            onPressed: Nhan,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text('x')
                        )
                    ),
                    SizedBox( //height of button
                        width:80, //width of button
                        child:ElevatedButton(
                            onPressed: Chia,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange, // Background color
                            ),
                            child: Text(':')
                        )
                    ),
                  ],
                ),

              ],
            )),
      ),
    );
  }
}

