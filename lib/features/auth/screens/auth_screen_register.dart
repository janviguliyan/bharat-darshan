// import 'dart:html';
// import 'dart:ui';

import 'package:calenderapp/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../constants/global_variables.dart';

class AuthScreenRegister extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreenRegister({super.key});

  @override
  State<AuthScreenRegister> createState() => _AuthScreenRegisterState();
}

class _AuthScreenRegisterState extends State<AuthScreenRegister> {

  bool functionsCalled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double width = constraints.maxWidth;
          final double height = constraints.maxHeight;
          return Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/bg_image.png',
                  width: width,
                  height: height,
                  fit: BoxFit.cover, // Choose your desired fit
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Container(
                  color: GlobalVariables.backgroundColor,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      // Colors.yourBackgroundColor, // Your background color
                      GlobalVariables.backgroundColor,
                      Colors.black.withOpacity(0.5), // Black with 80% opacity
                      Colors.black, // Full black
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 10),
                          child: SvgPicture.asset(
                            'assets/logo.svg',
                            height: height * 0.08,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.2),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: height * 0.055,
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    Container(
                      width: width * 0.9,
                      height: height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // labelText: "Username", // Label above the field
                          // labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width),
                            borderSide: const BorderSide(color: Colors.white,),
                          ),
                          hintText: "Enter Username",
                          hintStyle: const TextStyle(color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                        validator: (value) {
                          // Implement validation logic here
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      width: width * 0.9,
                      height: height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          // labelText: "Username", // Label above the field
                          // labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width),
                            borderSide: const BorderSide(color: Colors.white,),
                          ),
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                        validator: (value) {
                          // Implement validation logic here
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()),
                          ).then((value) => setState(() {
                          functionsCalled = false;
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.white,
                        fixedSize: Size(width * 0.9, height * 0.05),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width)),
                      ),
                      child: const Text("Confirm"),
                    ),
                    SizedBox(height: height * 0.05),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.055),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width * 0.35,
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const Text("OR",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            width: width * 0.35,
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          fixedSize: Size(width * 0.9, height * 0.05),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/google.svg'),
                            SizedBox(width: width * 0.07,),
                            const Text("Continue with Google"),
                          ],
                        )
                    ),
                    SizedBox(height: height * 0.03),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          fixedSize: Size(width * 0.9, height * 0.05),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.phone_android),
                            // SvgPicture.asset('assets/google.svg'),
                            SizedBox(width: width * 0.07,),
                            const Text("Continue with Mobile Number"),
                          ],
                        )
                    ),

                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
