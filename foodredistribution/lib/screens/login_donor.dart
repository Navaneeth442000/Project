import 'package:flutter/material.dart';
import 'package:foodredistribution/screens/donor_page.dart';

class ScreenLoginDonor extends StatefulWidget {
  ScreenLoginDonor({Key? key}) : super(key: key);

  @override
  State<ScreenLoginDonor> createState() => _ScreenLoginDonorState();
}

class _ScreenLoginDonorState extends State<ScreenLoginDonor> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Username',
                  // hintText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Username';
                  } else {
                    return null;
                  }
                },
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Password';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      checkLogin(context);
                    } else {}
                  },
                  child: const Text('Sign In')),
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == 'admin' && _password == 'admin') {
      // Goto Donor Page
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenDonor()));
    } else {
      print('Invalid');
    }
  }
}
