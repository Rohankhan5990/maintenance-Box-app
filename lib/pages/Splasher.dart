// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lgoin_ui/pages/login.dart';
import 'package:lgoin_ui/utilis/color.dart';

class Splasher extends StatefulWidget {
  const Splasher({super.key});

  @override
  State<Splasher> createState() => _SplasherState();
}

class _SplasherState extends State<Splasher> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangelightcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
              width: 150,
              height: 150,
              image: AssetImage('images/logo1.png'),
            ),
            Text.rich(TextSpan(
                text: 'Maintenance\n',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                      text: '          Box',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Colors.white)),
                ])),
          ],
        ),
      ),
    );
  }
}
