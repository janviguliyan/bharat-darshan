import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/global_variables.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Explore',
      style: optionStyle,
    ),
    Text(
      'Index 2: Plan & Manage',
      style: optionStyle,
    ),
    Text(
      'Index 3: My Trips',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: GlobalVariables.tertiaryColor,
      //   // Colors.deepPurpleAccent,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Row(children: [
      //         // Icon(Icons.shopify, size: 40),
      //         // Icon(
      //         SvgPicture.asset('assets/logo.svg',
      //             width: 45, semanticsLabel: 'Logo'),
      //         //     Image(image: AssetImage('assets/logo.svg'),width: 10),
      //         // ),
      //         const Text(
      //           "Bharatदर्शन",
      //           // style: GoogleFonts.playfairDisplay(),
      //           // TextStyle(
      //           //   color: Colors.white,
      //           //   fontSize: 20,
      //           // //   fontFamily: 'Playfair'
      //           //   // fontWeight: FontWeight.bold,
      //           // ),
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
      body: LayoutBuilder(builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;
        return SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/bg1.png',
                        fit: BoxFit.fitWidth,
                        width: width,
                      ))),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 10),
                        child: SvgPicture.asset(
                          'assets/logo.svg',
                          height: height * 0.08,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications,
                                  size: height * 0.035),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings, size: height * 0.035),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: height * 0.05,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  // TRAVEL TIPS, SHOPPING ETC
                  // Padding(
                  //   padding: EdgeInsets.only(left: width * 0.04),
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     dragStartBehavior: DragStartBehavior.start,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         TextButton(
                  //           onPressed: () {},
                  //           child: Container(
                  //             width: width * 0.5,
                  //             height: height * 0.1,
                  //             decoration: BoxDecoration(
                  //                 color: GlobalVariables.textColor,
                  //                 image: DecorationImage(
                  //                     fit: BoxFit.cover,
                  //                     image: AssetImage('assets/tt.png')),
                  //                 borderRadius: BorderRadius.circular(15)),
                  //             child: const Center(
                  //               child: Text(
                  //                 "Travel Tips",
                  //                 style: TextStyle(
                  //                   color: GlobalVariables.backgroundColor,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         TextButton(
                  //           onPressed: () {},
                  //           child: Container(
                  //             width: width * 0.5,
                  //             height: height * 0.1,
                  //             decoration: BoxDecoration(
                  //                 color: GlobalVariables.textColor,
                  //                 image: DecorationImage(
                  //                     fit: BoxFit.cover,
                  //                     image: AssetImage('assets/fd.png')),
                  //                 borderRadius: BorderRadius.circular(15)),
                  //             child: const Center(
                  //               child: Text(
                  //                 "Food & Drinks",
                  //                 style: TextStyle(
                  //                   color: GlobalVariables.backgroundColor,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         TextButton(
                  //           onPressed: () {},
                  //           child: Container(
                  //             width: width * 0.5,
                  //             height: height * 0.1,
                  //             decoration: BoxDecoration(
                  //                 color: GlobalVariables.textColor,
                  //                 image: const DecorationImage(
                  //                     fit: BoxFit.cover,
                  //                     image: AssetImage('assets/sh.png')),
                  //                 borderRadius: BorderRadius.circular(15)),
                  //             child: const Center(
                  //               child: Text(
                  //                 "Shopping",
                  //                 style: TextStyle(
                  //                   color: GlobalVariables.backgroundColor,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.22,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.05),
                              // border: Border.all(color: GlobalVariables.tertiaryColor),
                              color: GlobalVariables.backgroundColor2,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset('assets/corner.png')
                                ),
                                // Transform(
                                //   alignment: Alignment.bottomLeft,
                                //   transform: Matrix4.diagonal3Values(-1.0, -1.0, 1.0),
                                //   child:
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Image.asset('assets/corner2.png', )
                                  ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.05),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Continue planning your trip",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005,),
                                      const Text("Unfinished journeys deserve epic endings. Continue planning your trip from where you left off",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      // SizedBox(height: height * 0.005,),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: GlobalVariables.textColor,
                                            fixedSize: Size.fromHeight(height * 0.01),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width))
                                          ),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.arrow_forward,
                                                  color: GlobalVariables.backgroundColor2,
                                                  size: width * 0.05,
                                                )
                                            ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.05,),
                          Container(
                            height: height * 0.22,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.05),
                              // border: Border.all(color: GlobalVariables.tertiaryColor),
                              color: GlobalVariables.backgroundColor2,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('assets/corner.png')
                                ),
                                // Transform(
                                //   alignment: Alignment.bottomLeft,
                                //   transform: Matrix4.diagonal3Values(-1.0, -1.0, 1.0),
                                //   child:
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Image.asset('assets/corner2.png', )
                                ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.05),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Unveil your fully planned trip",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005,),
                                      const Text("Gaze upon the intricate mosaic of experiences you've orchestrated",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: GlobalVariables.textColor,
                                                  fixedSize: Size.fromHeight(height * 0.01),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width))
                                              ),
                                              child: const Text(
                                                "Latest Trip",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: GlobalVariables.textColor,
                                                  fixedSize: Size.fromHeight(height * 0.01),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width))
                                              ),
                                              child: const Text(
                                                "All Trips",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  // Center(
                  //     child: Align(
                  //         alignment: Alignment.topCenter,
                  //         child:
                  Image.asset(
                    'assets/bg2.png',
                    // fit: BoxFit.scaleDown,
                    // width: width,
                  ),
                  // )),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                          image: AssetImage('assets/bg3.png')),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Category",
                              style: TextStyle(
                                fontSize: height * 0.04,
                              ),
                            ),
                          ),
                        ),
                        Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: width * 0.25,
                                        height: height * 0.06,
                                        decoration: BoxDecoration(
                                            color: GlobalVariables.tertiaryColor,
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: AssetImage('assets/tt.png')),
                                            borderRadius: BorderRadius.circular(width)),
                                        child: const Center(
                                          child: Text(
                                            "Mountains",
                                            style: TextStyle(
                                              color: GlobalVariables.backgroundColor,
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Image.asset(
                    'assets/bg2.png',
                    // fit: BoxFit.scaleDown,
                    // width: width,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ],
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: GlobalVariables.textColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
              backgroundColor: GlobalVariables.textColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Plan & Manage',
              backgroundColor: GlobalVariables.textColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'My Trips',
              backgroundColor: GlobalVariables.textColor,
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: GlobalVariables.backgroundColor2,
        onTap: _onItemTapped,
      ),
    );
  }
}
