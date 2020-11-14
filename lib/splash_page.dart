import 'package:flutter/material.dart';
import 'package:multicamp_earthquake/home_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/multicamp-logo.png'),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Image.asset(
                  'assets/multicamp.png',
                  scale: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
