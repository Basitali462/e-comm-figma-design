import 'package:e_commerce_design/structure/constants/const_strings/controller_strings.dart';
import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_best_seller_header.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_load_more_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewBestSeller extends StatelessWidget {
  const WebViewBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'BEST SELLER',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        //SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 350, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              WebViewBestSellerHeaderItem(productName: 'All'),
              WebViewBestSellerHeaderItem(productName: 'Bags'),
              WebViewBestSellerHeaderItem(productName: 'Sneakers'),
              WebViewBestSellerHeaderItem(productName: 'Belt'),
              WebViewBestSellerHeaderItem(productName: 'Sunglasses'),
            ],
          ),
        ),
        /*GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F7F8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFF6F7F8),

                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    bestSellerImg,
                  ),
                ],
              ),
            ),
          ],
        ),*/
        Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.builder(
            itemCount: hoverController.initItemCount.value,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index){
              return Container(
                //height: 1000,
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                decoration: BoxDecoration(
                  color: Color(0xFFf6f6f6),
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 5,
                      child: Image.asset(
                        bestSellerImg,
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          //padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Nike Air Max 270 React',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                //SizedBox(height: 10,),
                                Expanded(
                                  child: Image.asset(
                                    rateProductImg,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '\$299.43',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color(0xFF40BFFF),
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text(
                                        '\$534.33',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF9098B1),
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text(
                                        '24% Off',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(0xFFFB7181),
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              );
            },
          ),
        ),),
        SizedBox(height: 20,),
        LoadMoreItems(),
      ],
    );
  }
}
