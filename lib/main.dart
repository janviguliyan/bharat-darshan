import 'package:calenderapp/constants/global_variables.dart';
import 'package:calenderapp/features/auth/screens/auth_screen.dart';
import 'package:calenderapp/router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SignUpApp());

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone app',
      theme: ThemeData(
        // fontFamily: 'Playfair',
        // colorSchemeSeed: GlobalVariables.textColor,
        textTheme: GoogleFonts.playfairDisplayTextTheme(Theme.of(context).primaryTextTheme),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.dark(
            primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: AppBarTheme(
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.white),
        ),

      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}

// Scaffold(
// // backgroundColor: GlobalVariables.backgroundColor,
// // Colors.black54,
// appBar: AppBar(
// backgroundColor: GlobalVariables.tertiaryColor,
// // Colors.deepPurpleAccent,
// title: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// const Row(children: [
// Icon(Icons.shopify, size: 40),
// Text(
// "Shopify",
// // style: TextStyle(
// //   color: Colors.white,
// //   fontSize: 20,
// //   fontWeight: FontWeight.bold,
// // ),
// ),
// ]),
// Row(children: [
// IconButton(
// onPressed: () {
// print("notif pressed");
// },
// icon: const Icon(Icons.notifications, size: 25),
// ),
// IconButton(
// onPressed: () {
// print("settings pressed");
// },
// icon: const Icon(Icons.settings, size: 25),
// ),
// ]),
// ],
// ),
// ),
// body: Center(
// child: Column(
// children: [
// const Text(
// "data",
// // style: TextStyle(color: Colors.white),
// ),
// Builder(
// builder: (context) {
// return ElevatedButton(
// onPressed: () {
// Navigator.pushNamed(context, AuthScreen.routeName);
// },
// // null,
// child: const Text("Click")
// );
// }
// ),
// ],
// ),
// ),
// ),
