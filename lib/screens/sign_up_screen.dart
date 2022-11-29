import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //logo section
                logo(size.height / 4, size.height / 8),
                SizedBox(
                  height: size.height * 0.02,
                ),
                richText(24),
                SizedBox(
                  height: size.height * 0.03,
                ),

                //email & password section
                emailTextField(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                passwordTextField(size),
                SizedBox(
                  height: size.height * 0.03,
                ),
                confirmPasswordTextField(size),
                SizedBox(
                  height: size.height * 0.03,
                ),

                //sign in button & sign in with text
                SignInButton(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                signInWithText(),
                SizedBox(
                  height: size.height * 0.02,
                ),

                SizedBox(
                  height: size.height * 0.03,
                ),

                //sign up text here
                Center(
                  child: footerText(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return Image.asset(
      "assets/images/sign_up4.png",
      height: 300,
      width: 300,
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          color: const Color(0xFF000000),
          letterSpacing: 3,
          height: 1.03,
        ),
        children: const [
          TextSpan(
            text: 'CREATE ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF21899C),
            ),
          ),
          TextSpan(
            text: 'A ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'NEW ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'ACCOUNT ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Email/ Phone number',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget confirmPasswordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Confirm password',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget SignInButton(Size size) {
    return ElevatedButton(
      child: Text(
          '                              CREATE                              '),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        primary: Colors.teal,
        onPrimary: Colors.white,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
      ),
      onPressed: () {},
    );
  }

  Widget signInWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(child: Divider()),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Or Sign in with',
          style: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF969AA8),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          width: 16,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }

  //sign up text here
  Widget footerText() {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: 12.0,
          color: const Color(0xFF3B4C68),
        ),
        children: const [
          TextSpan(
            text: 'Already have an account?',
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: Color(0xFF21899C),
            ),
          ),
          TextSpan(
            text: 'Get help',
            style: TextStyle(
              color: Color(0xFF21899C),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
