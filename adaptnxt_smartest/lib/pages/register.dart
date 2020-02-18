import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.red[400],
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text('SmarTest Registration'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.left,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.visibility_off)
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(34.0, 0, 0, 0),
                        child: Text('Have an account?',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 18.0,
                                color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(34.0, 4.0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                                letterSpacing: 0.5,
                                color: Colors.indigo[900]),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Create account',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15.0,
                          color: Colors.indigo),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 16.0, 16, 10),
                child: Center(
                  child: Text(
                    "By clicking on 'Create account' you agree to our Terms of Use and Privacy Policy",
                    style: TextStyle(
                        fontFamily: 'Raleway', color: Colors.grey[300]),
                  ),
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                    onChanged: null,
                    checkColor: Colors.indigo,
                  ),
                  Text(
                    'Email me deals and recommendations',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 13.0,
                        color: Colors.yellowAccent),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
