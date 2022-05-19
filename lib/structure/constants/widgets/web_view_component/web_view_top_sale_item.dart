import 'package:e_commerce_design/structure/constants/const_strings/controller_strings.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/hove_sale_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewTopSaleItem extends StatelessWidget {
  const WebViewTopSaleItem({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.offPrice,
    required this.itemImg,
    required this.offPercent,}) : super(key: key);

  final String itemName;
  final String itemPrice;
  final String offPrice;
  final String itemImg;
  final String offPercent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                itemName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(width: 50,),
            Text(
              offPrice,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: 0.5,
                color: Color(0xFF40BFFF),
              ),
            ),
          ],
        ),
        Image.asset(
          itemImg,
          width: 200,
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              itemPrice,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9098B1),
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: 5,),
            Text(
              offPercent,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFB7181),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
