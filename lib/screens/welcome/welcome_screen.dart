import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/sign_in_screen.dart';
import 'package:doctor_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset(
              "assets/images/sign_up4.png",
              fit: BoxFit.contain,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Sign In'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
