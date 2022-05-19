import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_strings/images_const.dart';

class WebFooterRowUp extends StatelessWidget {
  const WebFooterRowUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  appIcon,
                ),
                SizedBox(width: 10,),
                Text(
                  'E-Comm',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFF22262A),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry\'s standard\ndummy text ever.Since the 1500s, when\nan unknown printer.',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF22262A),
              ),
            ),
          ],
        ),
        //Follow Us
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Follow Us',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFF22262A),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Since the 1500s, when an unknown\nprinter took a galley of type and\nscrambled.',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF22262A),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset(
                  facebookIcon,
                ),
                SizedBox(width: 20,),
                Image.asset(
                  twitterIcon,
                ),
              ],
            ),
          ],
        ),
        //Contac Us
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFF22262A),
              ),
            ),
            Text(
              'E-Comm , 4578\nMarmora Road,\nGlasgow D04 89GR',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF22262A),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
