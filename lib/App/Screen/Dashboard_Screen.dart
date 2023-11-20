import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  static const routeName = '/dashBoard';

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 15,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Hello User!",
                style: GoogleFonts.poppins(fontSize: 30),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 15,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [],
                ),
              )),
        ],
      ),
    );
  }
}
