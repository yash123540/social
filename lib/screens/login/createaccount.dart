import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/screens/login/loginpage.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController txtEmailController = TextEditingController();
  TextEditingController txtPasswordController = TextEditingController();
  bool password = true;
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              const Text(
                'Create Your ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
              ),
              const Text(
                'Account ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
                controller: txtEmailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  prefixIconColor: Colors.red,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password Is Required';
                  }
                  if (value.length < 6) {
                    return 'Please Must Be 6 Character';
                  }
                  if (value.length > 30) {
                    return 'Please Small Than 30 Character';
                  }
                  if (value.contains(RegExp('a-zA-z0-9'))) {
                    return 'Password Must Be Character';
                  }
                  return null;
                },
                controller: txtPasswordController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                obscureText: password,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        password = !password;
                        setState(() {});
                      },
                      icon: Icon(
                        password ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      )),
                  prefixIconColor: Colors.red,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {}
                  },
                  child: const Text('Sign Up'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FacebookAuthButton(
                    onPressed: () {},
                    style: const AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                    ),
                  ),
                  GoogleAuthButton(
                      onPressed: () {},
                      style: const AuthButtonStyle(
                        buttonType: AuthButtonType.icon,
                      )),
                  AppleAuthButton(
                    onPressed: () {},
                    style: const AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already Have An Account?'),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginPage(),));
                  }, child: Text('Sign In'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
