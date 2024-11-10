import 'package:en_route/screens/approval_screen.dart';
import 'package:en_route/screens/email_screen.dart';
import 'package:en_route/screens/otp_verification.dart';
import 'package:en_route/screens/phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'En_Route!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ApprovalScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(color: Colors.green),
                child:
                    // Icon(FontAwesomeIcons.)
                    const Image(
                        image: AssetImage(
                  'assets/images/en_image.png',
                ))
                // Image.asset('assets/images/en_image.png'),

                )
          ],
        ),
      ),
    );
  }
}
