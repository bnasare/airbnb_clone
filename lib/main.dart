import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'consts/theme_data.dart';
import 'screens/bottom_bar_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    GoogleFonts.config.allowRuntimeFetching = false;
    runApp(
      const MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomBarScreen(),
      debugShowCheckedModeBanner: false,
      theme: themeData(),
    );
  }
}


 // IconButton.outlined(
                    //     style: ButtonStyle(
                    //       side: MaterialStateProperty.all(
                    //           const BorderSide(color: Colors.black)),
                    //     ),
                    //     onPressed: () {},
                    //     icon: const Icon(IconlyLight.filter)),


                    // SizedBox(
              //   height: 50,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     children: [
              //       IconButton(
              //         iconSize: 35,
              //         icon: const Icon(
              //           IconlyLight.location,
              //           color: Colors.black,
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             _selectedIndex = 1;
              //           });
              //         },
              //       ),
              //       const SizedBox(width: 30),
              //       IconButton(
              //         iconSize: 35,
              //         icon: const Icon(
              //           IconlyLight.location,
              //           color: Colors.black,
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             _selectedIndex = 2;
              //           });
              //         },
              //       ),
              //       // Add more IconButton widgets as needed...
              //     ],
              //   ),
              // )