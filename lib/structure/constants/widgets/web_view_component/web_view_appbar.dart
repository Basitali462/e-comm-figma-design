import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewAppBar extends StatelessWidget {
  const WebViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'EN',
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Color(0xFF262626),
            fontWeight: FontWeight.w400,
          ),
        ),
        Image.asset(
          dropDownIcon,
        ),
        SizedBox(width: 10,),
        Text(
          'USD',
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Color(0xFF262626),
            fontWeight: FontWeight.w400,
          ),
        ),
        Image.asset(
          dropDownIcon,
        ),
        Spacer(),
        Image.asset(
          profileIcon,
        ),
        SizedBox(width: 10,),
        Text(
          'My profile',
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Color(0xFF262626),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 25,),
        Image.asset(
          cartIcon,
        ),
        SizedBox(width: 10,),
        Text(
          'Items',
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Color(0xFF262626),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 25,),
        Text(
          '\$0.00',
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Color(0xFF262626).withOpacity(0.5),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 10,),
        Image.asset(
          searchIcon,
        ),
      ],
    );
  }
}
