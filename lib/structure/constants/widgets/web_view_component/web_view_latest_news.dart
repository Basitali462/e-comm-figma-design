import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_latest_new_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewLatestNews extends StatelessWidget {
  const WebViewLatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'LATEST NEWS',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Color(0xFF22262A),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 80),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              LatestNewsItem(
                logo: nikeLogo,
                date: '16 May, 2022',
                title: 'Fashion Industry',
                desc: 'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
              ),
              LatestNewsItem(
                logo: figmaLogo,
                date: '16 May, 2022',
                title: 'Best Design Tools',
                desc: 'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
              ),
              LatestNewsItem(
                logo: kronosLogo,
                date: '16 May, 2022',
                title: 'HR Community',
                desc: 'Lorem Ipsum is simply\ndummy text of the\nprinting and typesetting\nindustry.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
