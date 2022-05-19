import 'package:e_commerce_design/structure/constants/const_strings/images_const.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_footer_row1.dart';
import 'package:e_commerce_design/structure/constants/widgets/web_view_component/web_footer_row_two.dart';
import 'package:flutter/material.dart';

class WebViewFooter extends StatelessWidget {
  const WebViewFooter({Key? key}) : super(key: key);
  
  Widget paymentMethods(String methodIcon){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        methodIcon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 150, horizontal: 130),
      padding: EdgeInsets.fromLTRB(130, 150, 130, 54),
      decoration: BoxDecoration(
        color: Color(0xFFBCDDFE),
      ),
      child: Column(
        children: [
          WebFooterRowUp(),
          SizedBox(height: 80,),
          WebFooterRowDown(),
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Divider(
                  thickness: 1,
                  color: Color(0xFFF6F7F8),
                ),
                SizedBox(height: 40,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    paymentMethods(westernUnionIcon),
                    paymentMethods(masterCardIcon),
                    paymentMethods(payPalIcon),
                    paymentMethods(visaIcon),
                    SizedBox(width: 20,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
