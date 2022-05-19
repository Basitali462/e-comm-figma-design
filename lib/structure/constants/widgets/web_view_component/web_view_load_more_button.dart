import 'package:e_commerce_design/structure/constants/const_strings/controller_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadMoreItems extends StatelessWidget {
  const LoadMoreItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        hoverController.loadMoreItems();
      },
      child: Column(
        children: [
          Text(
            'LOAD MORE',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xFF33A0FF),
            ),
          ),
          Container(
            width: 110,
            height: 2,
            color: Color(0xFF33A0FF),
          ),
        ],
      ),
    );
  }
}
