import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_strings/images_const.dart';

class WebViewHotProduct extends StatelessWidget {
  const WebViewHotProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Image.asset(
          bestProductBg,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adidas Men Running \nSneakers',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                'Performance and design. Taken right to the edge.',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  'SHOP NOW',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -95,
          right: 0,
          child: Image.asset(
            bestProductItem,
          ),
        ),
      ],
    );
  }
}
