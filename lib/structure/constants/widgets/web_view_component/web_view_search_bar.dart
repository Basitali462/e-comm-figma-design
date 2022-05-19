import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewSearchBar extends StatelessWidget {
  const WebViewSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width / 3, vertical: 80),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Color(0xFFBCDDFE),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 50,
                //width: MediaQuery.of(context).size.width / 4,
                /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                  border: Border.all(
                    color: Color(0xFFBCDDFE),
                    width: 1,
                  ),
                ),*/
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    hintText: 'Search query...',
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF262626).withOpacity(0.35),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 50,
                //width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  /*borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),*/
                  color: Color(0xFF40BFFF),
                ),
                child: Text(
                  'Search',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
