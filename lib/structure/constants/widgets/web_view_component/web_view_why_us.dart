import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewWhyUs extends StatelessWidget {
  const WebViewWhyUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  shippingImg,
                ),
                SizedBox(height: 50,),
                Text(
                  'FREE SHIPPING',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          //SizedBox(width: 40,),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  refundImg,
                ),
                SizedBox(height: 50,),
                Text(
                  '100% REFUND',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          //SizedBox(width: 40,),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  supportImg,
                ),
                SizedBox(height: 50,),
                Text(
                  'SUPPORT 24/7',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF22262A),
                  ),
                ),
                Text(
                  'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
