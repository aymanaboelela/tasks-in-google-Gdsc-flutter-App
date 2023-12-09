import 'package:flutter/material.dart';

import '../../core/responsive.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.name,
    required this.onTap,
  });
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: SizeConfig.defaultSize! * 6,
        decoration: const BoxDecoration(color: Color(0xFFFED36A)),
        child:  Center(
          child: Text(
            name,
            style:const  TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0.12,
            ),
          ),
        ),
      ),
    );
  }
}
