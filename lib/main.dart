import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: nevjegy()
));

class nevjegy extends StatelessWidget {
  const nevjegy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: const Text ('Névjegyem'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text('NÉV',
            style: TextStyle(
              color: Colors.black45,
              letterSpacing: 2.0,
            ),
          ),
          // Üres tér beillesztése a két névelem közé
        SizedBox(height: 10.0),
        Text('Díno Nínó a dinoszaurusz',
            style: TextStyle(
            color: Colors.black,
            letterSpacing: 3.0,
            fontWeight:  FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
            SizedBox(height: 10.0),


        ],
      ),
    )
    );

  }
}


