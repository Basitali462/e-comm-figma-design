import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_featured_product_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewFeaturedProduct extends StatelessWidget {
  const WebViewFeaturedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'FEATURED PRODUCTS',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Color(0xFF22262A),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              WebViewFeaturedProductItem(),
              WebViewFeaturedProductItem(),
              WebViewFeaturedProductItem(),
            ],
          ),
        ),
      ],
    );
  }
}
