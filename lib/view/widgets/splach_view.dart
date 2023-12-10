import 'package:flutter/material.dart';


import '../../core/const.dart';
import '../../core/responsive.dart';
import '../login_screen.dart';
import 'custom_button.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: KPColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizeVertical(value: 6),
              Image.asset(
                KPlogoAndText,
                height: 70,
              ),
              const SizeVertical(value: 2),
              Image.asset(
                "assets/images/pana.png",
              ),
              const SizeVertical(value: 3),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Manage\nyour\nTasks With ',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 61,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                        ),
                      
                    ),
                    TextSpan(
                      text: 'DayTask',
                      style:  TextStyle(
                          color: Color(0xFFFED36A),
                          fontSize: 61,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                        ),
                      ),
                 
                  ],
                ),
              ),
              const SizeVertical(value: 2),
              CustomButton(
                name: 'Let’s Start',
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
