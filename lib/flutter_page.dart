import 'package:flutter/material.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({super.key});

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/flutter.png'),
          SizedBox(height: 20),
          Container(
            child: Text('Demo', style: TextStyle(fontSize: 20)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitched ? Colors.green : Colors.red,
            ),
            onPressed: (){}, child: Text('Button')),
          SizedBox(height: 20),
          OutlinedButton(onPressed: (){}, child: Text('Button')),
          SizedBox(height: 20),
          TextButton(onPressed: (){}, child: Text('Button')),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Button')),
              ElevatedButton(onPressed: (){}, child: Text('Button')),
              ElevatedButton(onPressed: (){}, child: Text('Button')),
            ],
          ),
          
        ],
      ),
    
    );
  }
}