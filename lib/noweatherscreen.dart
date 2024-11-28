import 'package:flutter/material.dart';
class noweatherscreen extends StatelessWidget {
  const noweatherscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(child: Text('There is no weather 😔 \n Start searching now 🔍',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),);
  }
}
