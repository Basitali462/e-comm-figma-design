import 'package:flutter/material.dart';

class HoverDropDown extends StatelessWidget {
  const HoverDropDown({
    Key? key,
    required this.child,
    required this.onHoverEnter,
    required this.onHoverExit,
    required this.hoverItem,
  }) : super(key: key);

  final Widget child;
  final Function onHoverEnter;
  final Function onHoverExit;
  final String hoverItem;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onHoverEnter,
      //onEnter: (event) => print('enter item : ' + hoverItem),
      onExit: (event) => onHoverExit,
      child: child,
    );
  }
}
