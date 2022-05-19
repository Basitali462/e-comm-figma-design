import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_appbar.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_best_seller.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_featured_product.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_footer.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_header.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_hot_product.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_latest_news.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_promotional_img.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_search_bar.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_top_sale_item.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_why_us.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: WebViewAppBar(),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WebViewHeader(),
          /*Expanded(
            child: Image.asset(
              promotionImage,
              width: double.infinity,
              //height: double.infinity,
            ),
          ),*/
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WebViewPromotionalImage(),
                  SizedBox(height: 270,),
                  WebViewBestSeller(),
                  SizedBox(height: 110,),
                  WebViewHotProduct(),
                  //SizedBox(height: 80,),
                  WebViewWhyUs(),
                  WebViewLatestNews(),
                  WebViewFeaturedProduct(),
                  WebViewSearchBar(),
                  WebViewFooter(),
                  //SizedBox(height: 60,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
