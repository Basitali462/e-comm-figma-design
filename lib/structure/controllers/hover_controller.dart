import 'package:get/get.dart';

class HoverController extends GetxController{
  var isHovering1 = false.obs;
  var isHovering2 = false.obs;
  var isHovering3 = false.obs;

  var initItemCount = 4.obs;

  onHover(var val, int item){
    if(item == 0){
      isHovering1.value = val;
    }else if(item == 1){
      isHovering2.value = val;
    }else if(item == 2){
      isHovering3.value = val;
    }
  }

  loadMoreItems(){
    initItemCount.value = initItemCount.value + 4;
  }
}