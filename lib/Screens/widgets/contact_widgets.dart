import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_web_app/utils/colors.dart';

class ContactWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContactWidgets({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon, color: AppColor.backgroundColor, size: 20),
      const SizedBox(width: 10),

      Text(
        title,
        style: GoogleFonts.poppins(color: Colors.teal, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ]);
  }
}
