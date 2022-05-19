import 'package:e_commerce_design/structure/constants/widgets/web_view_component/hove_sale_widget.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_view_top_sale_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_strings/controller_strings.dart';
import '../../const_strings/images_const.dart';

class WebViewPromotionalImage extends StatelessWidget {
  const WebViewPromotionalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Image.asset(
          promotionImage,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'Super Flash Sale\n50% Off',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 54,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: -230,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: SaleHoverWidget(
                      item: 0,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20,),
                        decoration: BoxDecoration(
                          color: hoverController.isHovering1.value
                              ? Color(0xFF9098B1)
                              : Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              //spreadRadius: 1,
                              //offset: Offset(-1, 1),
                            ),
                          ],
                        ),
                        child: WebViewTopSaleItem(
                          itemName: 'FS - QUILTED MAXI CROSS BAG',
                          itemPrice: '\$534,33',
                          offPrice: '\$299,43',
                          itemImg: topSale1,
                          offPercent: '24% Off',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SaleHoverWidget(
                      item: 1,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20,),
                        decoration: BoxDecoration(
                          color: hoverController.isHovering2.value
                              ? Color(0xFF9098B1)
                              : Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              //spreadRadius: 1,
                              //offset: Offset(-1, 1),
                            ),
                          ],
                        ),
                        child: WebViewTopSaleItem(
                          itemName: 'FS - Nike Air Max 270 React...',
                          itemPrice: '\$534,33',
                          offPrice: '\$299,43',
                          itemImg: topSale2,
                          offPercent: '24% Off',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SaleHoverWidget(
                      item: 2,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20,),
                        decoration: BoxDecoration(
                          color: hoverController.isHovering3.value
                              ? Color(0xFF9098B1)
                              : Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              //spreadRadius: 1,
                              //offset: Offset(-1, 1),
                            ),
                          ],
                        ),
                        child: WebViewTopSaleItem(
                          itemName: 'FS - Nike Air Max 270 React...',
                          itemPrice: '\$534,33',
                          offPrice: '\$299,43',
                          itemImg: topSale3,
                          offPercent: '24% Off',
                        ),
                      ),
                    ),
                  ),
                ],
              ),),
            ),
          ),
        ),
      ],
    );
  }
}
