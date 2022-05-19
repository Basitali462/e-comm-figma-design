import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatestNewsItem extends StatelessWidget {
  const LatestNewsItem({
    Key? key,
    required this.logo,
    required this.date,
    required this.title,
    required this.desc,}) : super(key: key);

  final String logo;
  final String date;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          logo,
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              date,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFFC1C8CE),
              ),
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color(0xFF22262A),
              ),
            ),
            Text(
              desc,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
              ),
              maxLines: 4,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
