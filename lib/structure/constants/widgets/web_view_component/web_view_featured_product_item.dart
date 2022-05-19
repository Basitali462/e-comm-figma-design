import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewFeaturedProductItem extends StatelessWidget {
  const WebViewFeaturedProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          featuredProduct,
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Blue Swade Nike\nSneakers',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
            SizedBox(height: 20,),
            Image.asset(
              rateProductImg,
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  '\$499',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFFFF4858),
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  '\$599',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFFC1C8CE),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
