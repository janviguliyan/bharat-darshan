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
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/bg1flip.png',
                        fit: BoxFit.fitWidth,
                        width: width,
                      )),
                ),
              ),
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
                    // padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    // padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    padding: const EdgeInsets.symmetric(horizontal: 15),

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            // height: height * 0.22,
                            // width: width * 0.8,
                            height: height * 0.25,
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
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            // height: height * 0.22,
                            // width: width * 0.8,
                            height: height * 0.25,
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
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Image.asset('assets/corner2.png', )
                                ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.05),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                                style: TextStyle(
                                                    color: GlobalVariables.backgroundColor2,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                ),
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
                                                style: TextStyle(
                                                    color: GlobalVariables.backgroundColor2,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                ),
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
                  Image.asset(
                    'assets/bg2.png',
                    // fit: BoxFit.scaleDown,
                    // width: width,
                  ),
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
                          // padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Category",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Column(
                            children: [
                              Row(
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
                              Row(
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
                              Row(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const Text("Top Places To Visit",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.93,
                                // height: height,
                                decoration: const BoxDecoration(
                                  color: GlobalVariables.backgroundColor2,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: CarouselContainer(),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width: width * 0.93,
                                // height: height,
                                decoration: const BoxDecoration(
                                  color: GlobalVariables.backgroundColor2,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: CarouselContainer(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
      floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat_bubble),
      ),
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

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Trending",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/jaipur.png'), fit: BoxFit.cover),
                // color: GlobalVariables.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1. Jaipur",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(GlobalVariables.textColor),
                          ),
                          onPressed: () {},
                          child: Text("View",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalVariables.backgroundColor2,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: GlobalVariables.tertiaryColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/dal.png'), fit: BoxFit.cover),
                // color: GlobalVariables.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2. Dalhousie",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(GlobalVariables.textColor),
                          ),
                          onPressed: () {},
                          child: Text("View",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalVariables.backgroundColor2,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: GlobalVariables.tertiaryColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/deh.png'), fit: BoxFit.cover),
                // color: GlobalVariables.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("3. Dehradun",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(GlobalVariables.textColor),
                          ),
                          onPressed: () {},
                          child: Text("View",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalVariables.backgroundColor2,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: GlobalVariables.tertiaryColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/udaipur.png'), fit: BoxFit.cover),
                // color: GlobalVariables.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("4. Udaipur",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(GlobalVariables.textColor),
                          ),
                          onPressed: () {},
                          child: Text("View",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalVariables.backgroundColor2,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: GlobalVariables.tertiaryColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/shimla.png'), fit: BoxFit.cover),
                // color: GlobalVariables.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("5. Shimla",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(GlobalVariables.textColor),
                          ),
                          onPressed: () {},
                          child: Text("View",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalVariables.backgroundColor2,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}