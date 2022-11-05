import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: nevjegy()
));

class nevjegy extends StatelessWidget {
  const nevjegy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Névjegyem'),
      ),
    );

  }
}


