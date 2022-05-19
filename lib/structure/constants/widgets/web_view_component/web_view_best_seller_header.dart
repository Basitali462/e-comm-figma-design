import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewBestSellerHeaderItem extends StatelessWidget {
  const WebViewBestSellerHeaderItem({
    Key? key,
    required this.productName,}) : super(key: key);

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Text(
      productName,
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
