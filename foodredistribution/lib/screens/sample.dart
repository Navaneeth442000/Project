import 'package:flutter/material.dart';
import 'package:foodredistribution/screens/login_agent.dart';
import 'package:foodredistribution/screens/login_donor.dart';
import 'package:foodredistribution/screens/login_selection.dart';

class Sample extends StatefulWidget {
  const Sample({ Key? key }) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {

  @override
  void initState() {
    login();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcommmm'),
      ),
    );
  }
Future<void> login() async{
  Future.delayed(Duration(seconds: 3));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>ScreenLoginAgent()));
}

}