import 'package:e_commerce_design/structure/constants/widgets/custom_drop_down_components/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_strings/images_const.dart';

class WebViewHeader extends StatelessWidget {
  const WebViewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 12),
      child: Row(
        children: [
          Image.asset(
            appIcon,
          ),
          SizedBox(width: 5,),
          Text(
            'E-Comm',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF22262A),
            ),
          ),
          Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDropDown(dropName: 'HOME'),
                CustomDropDown(dropName: 'BAGS'),
                CustomDropDown(dropName: 'SNEAKERS'),
                CustomDropDown(dropName: 'BELT'),
                CustomDropDown(dropName: 'CONTACT'),
                /*Text(
                  'HOME',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'BAGS',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'SNEAKERS',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'BELT',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'CONTACT',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
