import 'package:flutter/material.dart';

import 'package:loading_indicator/loading_indicator.dart';
import 'package:SmarTest/utils/config_helper.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void fnDoNavigate() async {
    bool bIsAppRegistered = await ConfigHelper.fnGetAppRegistrationState();
    if(false == bIsAppRegistered) {
      Navigator.pushReplacementNamed(context, '/register');
    }
    else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  void initState() {
    super.initState();

    this.fnDoNavigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        body: Center(
          child: SizedBox(
            width: 150,
            height: 150,
            child: LoadingIndicator(
              indicatorType: Indicator.pacman,
              color: Colors.white,
            ),
          ),
        ));
  }
}
