import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/screens/login/createaccount.dart';
import 'package:socialapp/screens/login/loginpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/welcome-sign-on-warm-hygge-background-picture-id1179755977?b=1&k=20&m=1179755977&s=170667a&w=0&h=_rzflzYxil8GUn66idaKC6Wmzznszee4uqEMNEqIea8='),
            ),
            const Text(
              'Let`s you in',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gulzar',
                  fontSize: 40),
            ),
            FacebookAuthButton(
              onPressed: () {},
              text: 'Continue with Facebook',
              style: const AuthButtonStyle(
                  buttonType: AuthButtonType.secondary,
                  buttonColor: Colors.white,
                  textStyle: TextStyle(color: Colors.black)),
            ),
            GoogleAuthButton(
              onPressed: () {},
              text: 'Continue with Google',
              style: const AuthButtonStyle(
                  textStyle: TextStyle(color: Colors.black),
                  buttonType: AuthButtonType.secondary,
                  buttonColor: Colors.white),
            ),
            AppleAuthButton(
                onPressed: () {},
                text: 'Continue with Apple',
                style: const AuthButtonStyle(
                    textStyle: TextStyle(color: Colors.black),
                    buttonType: AuthButtonType.secondary,
                    buttonColor: Colors.white)),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text('Or'),
                Expanded(
                    child: Divider(
                      thickness: 1,
                    )),
              ],
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),));
              },
              color: Colors.blue.shade300,
              minWidth: 300,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(width: 0, color: Colors.white)),
              child: const Text('Sign in with Password'),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don`t You Have Account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const CreateAccount(),));
                  },
                  child: Text(
                    'Create An Account',
                    style: TextStyle(color: Colors.blue.shade300),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
