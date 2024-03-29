import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controller

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
        setState(() {
          
        });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    
    super.dispose();
  }

  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: "Enter email",
                            labelText: "Email",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Username cannot be empty";
                            }

                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Material(
                          color: context.theme.buttonColor,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          child: InkWell(
                            onTap: signIn,
                            // onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
