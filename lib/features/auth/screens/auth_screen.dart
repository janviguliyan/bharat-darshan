import 'package:calenderapp/features/auth/screens/auth_screen_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../constants/global_variables.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool functionsCalled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: GlobalVariables.backgroundColor,
      // Colors.black54,
      // appBar: AppBar(
      //   backgroundColor: GlobalVariables.tertiaryColor,
      //   // Colors.deepPurpleAccent,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Row(children: [
      //         // Icon(Icons.shopify, size: 40),
      //         // Icon(
      //         SvgPicture.asset('assets/logo.svg', width: 45, semanticsLabel: 'Logo'),
      //         //     Image(image: AssetImage('assets/logo.svg'),width: 10),
      //         // ),
      //         const Text(
      //           "Bharatदर्शन",
      //         // style: GoogleFonts.playfairDisplay(),
      //         // TextStyle(
      //         //   color: Colors.white,
      //         //   fontSize: 20,
      //         // //   fontFamily: 'Playfair'
      //         //   // fontWeight: FontWeight.bold,
      //         // ),
      //         ),
      //       ]),
      //       Row(children: [
      //         IconButton(
      //           onPressed: () {
      //             print("notif pressed");
      //           },
      //           icon: const Icon(Icons.notifications, size: 25),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             print("settings pressed");
      //           },
      //           icon: const Icon(Icons.settings, size: 25),
      //         ),
      //       ]),
      //     ],
      //   ),
      // ),
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
                    SizedBox(height: height * 0.38),
                    Text(
                      "Register/Login",
                      style: TextStyle(
                        fontSize: height * 0.055,
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreenRegister()),
                        ).then((value) => setState(() {
                              functionsCalled = false;
                            }));
                        // },
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
                      child: const Text("Sign up for free"),
                    ),
                    SizedBox(height: height * 0.03),
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
                          const Text(
                            "OR",
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
                            SvgPicture.asset('assets/google.svg'),
                            SizedBox(
                              width: width * 0.07,
                            ),
                            const Text("Continue with Google"),
                          ],
                        )),
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
                            SizedBox(
                              width: width * 0.07,
                            ),
                            const Text("Continue with Mobile Number"),
                          ],
                        )),
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
