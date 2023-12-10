import 'package:flutter/material.dart';

import 'package:mangment_app/core/const.dart';
import 'package:mangment_app/core/responsive.dart';
import 'package:mangment_app/view/widgets/custom_button.dart';
import 'package:mangment_app/view/widgets/custom_text_field.dart';

import 'home_screen.dart';
import 'sing_up.dart';
import 'widgets/custom_outline_button.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool isLading = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: KPColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizeVertical(value: 4),
                Center(
                  child: Image.asset(
                    KPlogoAndText,
                    height: SizeConfig.defaultSize! * 10,
                  ),
                ),
                const SizeVertical(value: 3),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  icon: "assets/images/email1.png",
                  onSaved: (data) {
                    email = data;
                  },
                  fillColor: const Color(0xFF8CAAB8),
                  cursorColor: Color(0xFF8CAAB8),
                  title: "Email Address",
                ),
                CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (data) {
                    password = data;
                  },
                  icon: "assets/images/password.png",
                  isVisible: true,
                  title: "Password",
                  fillColor: const Color(0xFF8CAAB8),
                  cursorColor: const Color(0xFF8CAAB8),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(top: 11),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8CAAB8),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: CustomButton(
                      name: "Log in",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        }
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.only(top: 37),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Color(0xff8CAAB9),
                        thickness: 2,
                        indent: 30,
                        endIndent: 6,
                      )),
                      Text(
                        "Or continue with",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff8CAAB9),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Color(0xff8CAAB9),
                        thickness: 2,
                        indent: 10,
                        endIndent: 35,
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 37),
                  child: CustomOutlineButton(
                    onPressed: () {},
                    title: "Google",
                    icon: "assets/images/google.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: Color(0xff8CAAB9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Singin()),
                          );
                        },
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFED36A),
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
      ),
    );
  }
}
