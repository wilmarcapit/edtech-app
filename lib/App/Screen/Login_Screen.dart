import 'package:edtech_app/App/Widgets/customText_Field.dart';
import 'package:edtech_app/App/Widgets/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double screenWidth = constraints.maxWidth;
      final double screenHeight = constraints.maxHeight;
      return Scaffold(
        body: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: screenHeight * .4,
              width: screenWidth * .7,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email...',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PasswordTextField(
                      controller: passwordController,
                      hintText: 'Password...',
                      isObscurable: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up?',
                        style: GoogleFonts.poppins(
                          color: Colors.black45,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          HexColor('FFA23D'),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: HexColor('A55804'), width: 2.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 18, horizontal: 100),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).pushNamed(NavScreen.routeName);
                      },
                      //_showOtpDialog(emailController.text);

                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      );
    });
  }
}
