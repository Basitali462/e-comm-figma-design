import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebFooterRowDown extends StatelessWidget {
  const WebFooterRowDown({Key? key}) : super(key: key);

  Widget rowWidget(String title){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF22262A),
          ),
        ),
        SizedBox(height: 20,),
        Text(
          'About Us\nInfomation\nPrivacy Policy\nTerms & Conditions',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF22262A),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rowWidget('Information'),
        rowWidget('Service'),
        rowWidget('My Account'),
        rowWidget('Our Offers'),
      ],
    );
  }
}
