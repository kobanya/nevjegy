import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: nevjegy(),
));

class nevjegy extends StatefulWidget {
   nevjegy ({Key? key}) : super(key: key);

  int szamlalo = 0;

  @override
  State<nevjegy> createState() => _nevjegyState();
}

class _nevjegyState extends State<nevjegy> {
    int szamlalo = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: const Text ('Névjegyem'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              szamlalo += 1;
            });
          },
        backgroundColor: Colors.amber[600],
       child: const Icon(Icons.add) ,

      ),
    body: Padding(
      padding:  const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
           const Center(
             child: CircleAvatar(
              backgroundImage: AssetImage('assets/dino.png'),
              radius: 70.0,
          ),
           ),
          const Divider(
            height: 90.0,
          ),
          const Text('NÉV',
            style: TextStyle(
              color: Colors.black45,
              letterSpacing: 2.0,
            ),
          ),
          // Üres tér beillesztése a két névelem közé
        const SizedBox(height: 10.0),
        const Text('Díno Nínó a dinoszaurusz',
            style: TextStyle(
            color: Colors.black,
            letterSpacing: 3.0,
            fontWeight:  FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
        const SizedBox(height: 30.0),
        const Text('Helyezésem',
            style: TextStyle(
            color: Colors.black45,
            letterSpacing: 2.0,
        ),
        ),
        Text('$szamlalo',
            style: const TextStyle(
            color: Colors.black,
            letterSpacing: 3.0,
            fontWeight:  FontWeight.bold,
            fontSize: 28.0,
            ),
            ),
          const SizedBox(height: 50.0),
          Row (
           children: const <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey,
              ),


           SizedBox(width: 5.0),

           Text(
            'dino@dinofalva.di',
                style: TextStyle(
              color: Colors.black45,
              fontSize: 18.0,
          )
          )
    ],
    ),
    ],
    ),
    ),
    );
  }
}


