import 'package:e_commerce_design/structure/constants/widgets/custom_drop_down_components/drop_down_item.dart';
import 'package:e_commerce_design/structure/constants/widgets/custom_drop_down_components/hover_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatefulWidget {
  final String dropName;
  const CustomDropDown({
    Key? key,
    required this.dropName,
  }) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  GlobalKey actionKey = GlobalKey();
  double height = 0.0;
  double width = 0.0;
  double xPosition = 0.0;
  double yPosition = 0.0;
  bool isDropdownOpened = false;
  late OverlayEntry floatingDropdown;

  @override
  void initState() {
    // TODO: implement initState
    actionKey = LabeledGlobalKey(widget.dropName);
    super.initState();
  }

  void findDropdownData(){
    RenderBox renderBox = actionKey.currentContext!.findRenderObject() as RenderBox;
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry createFloatingDropdown(){
    return OverlayEntry(builder: (context){
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(
                color: Color(0xFFF1F3F4),
                width: 2
              ),
            ),
            margin: EdgeInsets.only(
              top: yPosition + height + height/3,
              left: 200,
              right: 200,
            ),
            padding: EdgeInsets.symmetric(vertical: 38, horizontal: 84),
            height: 400,
            child: Material(
              color: Color(0xFFFFFFFF),
              child: Row(
                children: const [
                  Expanded(
                    child: CustomDropDownItem(),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: CustomDropDownItem(),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: CustomDropDownItem(),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: (){
      },
      child: MouseRegion(
        onEnter: (event){
          setState(() {
            findDropdownData();
            floatingDropdown = createFloatingDropdown();
            Overlay.of(context)!.insert(floatingDropdown);
          });
        },
        onExit: (event){
          setState(() {
            floatingDropdown.remove();
          });
        },
        child: Container(
          child: Text(
            widget.dropName,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFF22262A),
            ),
          ),
        ),
      ),
    );
  }
}
