import 'package:e_commerce_design/structure/constants/const_strings/controller_strings.dart';
import 'package:flutter/material.dart';

class SaleHoverWidget extends StatelessWidget {
  const SaleHoverWidget({
    Key? key,
    required this.child,
    required this.item,
  }) : super(key: key);

  final Widget child;
  final int item;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => hoverController.onHover(true, item),
      onExit: (event) => hoverController.onHover(false, item),
      child: child,
    );
  }
}
