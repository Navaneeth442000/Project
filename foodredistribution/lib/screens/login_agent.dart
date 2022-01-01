import 'package:flutter/material.dart';
import 'package:foodredistribution/screens/agent_page.dart';

class ScreenLoginAgent extends StatefulWidget {
  const ScreenLoginAgent({ Key? key }) : super(key: key);

  @override
  State<ScreenLoginAgent> createState() => _ScreenLoginAgentState();
}

class _ScreenLoginAgentState extends State<ScreenLoginAgent> {

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
                    padding: EdgeInsets.only(top: 25.0,left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                          // textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Sign in back into your account',style: TextStyle(
                          fontSize: 15,
                        ),),
                      ],
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Sign In',style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            TextFormField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,),
                                ),
                                labelText: 'Username',
                                labelStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.white,
                               // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: ),),
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
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white)
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
                              height: 35,
                            ),
                            Center(
                              child: OutlinedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    checkLogin(context);
                                  } else {}
                                },
                                child: const Text('Sign In'),
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
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account yet?"),
                        TextButton(onPressed: (){}, child: Text('Sign Up'))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }

  Future<void> checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == 'admin' && _password == 'admin') {
      // Goto Donor Page
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenAgent()));
    } else {
      print('Invalid');
    }
  }
}