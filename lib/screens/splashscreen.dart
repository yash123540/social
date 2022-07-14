import 'package:flutter/material.dart';
import 'package:socialapp/screens/login/signup.dart';
import 'package:socialapp/screens/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen();
  }

  Future<void> splashScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUp(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Screens.height(context) * 1,
            width: Screens.height(context) * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1554177255-61502b352de3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNvY2lhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
