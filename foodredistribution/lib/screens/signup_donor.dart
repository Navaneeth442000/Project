import 'package:flutter/material.dart';

class ScreenSignupDonor extends StatefulWidget {
ScreenSignupDonor({ Key? key }) : super(key: key);

  @override
  State<ScreenSignupDonor> createState() => _ScreenSignupDonorState();
}

class _ScreenSignupDonorState extends State<ScreenSignupDonor> {
   final _usernameController = TextEditingController();

   final _passwordController = TextEditingController();

   bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                          // textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Signup into your account',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                // hintText: 'Username',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter Username';
                                } else {
                                  return null;
                                }
                              },
                            ),SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Username',
                                labelStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
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
                              height: 10,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
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
                              height: 30,
                            ),
                            Center(
                              child: OutlinedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    checkLogin(context);
                                  } else {}
                                },
                                child: const Text('Sign Up'),
                                style: OutlinedButton.styleFrom(
                                  primary: Colors.white,
                                  fixedSize: Size(200, 50),
                                  shape: StadiumBorder(),
                                  side: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(onPressed: () {
                          Navigator.of(context).pop();
                        }, child: Text('Sign In'))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        );
  }

   Future<void> checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == 'admin' && _password == 'admin') {
      // Goto Donor Page
      Navigator.of(context)
          .pop();
    } else {
      print('Invalid');
    }
  }
}