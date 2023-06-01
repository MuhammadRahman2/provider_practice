import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tech_lift_working/views/pages/task2/home_screen.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  String? email = '';

  String? password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 18),
            ),
            Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            hintText: 'Email', border: OutlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'email is empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            hintText: 'Password', border: OutlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password is empty or length is less then 6';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 50),
                      CupertinoButton(
                        color: Colors.amber,
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            await setData();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        },
                        child: const Text('Add data'),
                      ),
                      CupertinoButton(
                          child: Text('show data'),
                          onPressed: () async {
                            await getData();
                          }),
                      Text(email!),
                      Text(password!)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      email = pref.getString('email');
      password = pref.getString('password');
    });
  }

  Future<String> setData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    email = pref
        .setString('email', emailController.text)
        .then((value) => print('email is add'))
        .toString();
    password = pref
        .setString('password', passwordController.text)
        .then((value) => print('password is add'))
        .toString();
    return '$email $password';
  }
}
