import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_strings/controller_strings.dart';

class CustomDropDownItem extends StatelessWidget {
  const CustomDropDownItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Category',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: Color(0xFFC1C8CE),
            fontSize: 22,
          ),
        ),
        SizedBox(height: 24,),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 50,
              childAspectRatio: 5,
            ),
            itemBuilder: (context, index){
              return Text(
                dropDownItem[index],
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF262626),
                ),
              );
            },
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
