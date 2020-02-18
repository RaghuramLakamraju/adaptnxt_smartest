import 'package:flutter/material.dart';

import 'package:SmarTest/pages/home.dart';
import 'package:SmarTest/pages/loading.dart';
import 'package:SmarTest/pages/register.dart';
import 'package:SmarTest/pages/login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LoadingScreen(),
    '/register': (context) => RegisterUser(),
    '/login': (context) => LoginUser(),
    '/home': (context) => SmarTestHome()
  },
));
