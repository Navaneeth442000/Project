import 'package:flutter/material.dart';

class ScreenLoginDonor extends StatelessWidget {
 ScreenLoginDonor({ Key? key }) : super(key: key);


  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Username',
                 // hintText: 'Username',
                ),
              ),
            const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Password',
                  // hintText: 'Password',
                ),
              ),
            const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){

              }, child: Text('Sign In')),
            ],
          ),
        ),
      )
    );
  }

  Future<void> checkLogin() async{
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    
  }


}