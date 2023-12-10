import 'package:flutter/material.dart';

import 'package:mangment_app/core/const.dart';
import 'package:mangment_app/core/responsive.dart';
import 'package:mangment_app/view/widgets/custom_button.dart';
import 'package:mangment_app/view/widgets/custom_text_field.dart';
import 'home_screen.dart';
import 'widgets/custom_outline_button.dart';

class Singin extends StatefulWidget {
  Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email;

  String? password;

  String? fullName;

  bool? isClick = false;

  bool? isLading = false;

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
                  "Create your account",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                CustomTextFormField(
                  keyboardType: TextInputType.name,
                  icon: "assets/images/addname.png",
                  onSaved: (data) {
                    fullName = data;
                  },
                  fillColor: const Color(0xFF8CAAB8),
                  cursorColor: const Color(0xFF8CAAB8),
                  title: "Full Name",
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
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Singin()),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: const Color(0xFFFED36A),
                          activeColor: Colors.transparent,
                          value: isClick,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: const Color(0xFFFED36A)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          onChanged: (value) {
                            isClick = value ?? false;

                            setState(() {});
                          },
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "I have read & agreed to DayTask",
                                style: TextStyle(
                                  color: Color(0xFF8CAAB8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Privacy Policy, Terms & Condition",
                                style: TextStyle(
                                  color: Color(0xFFFED36A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: CustomButton(
                      name: "Sing in",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
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
                        "Already have an account?",
                        style: TextStyle(
                          color: Color(0xff8CAAB9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          " Log In",
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
