import 'package:flutter/material.dart';
import 'package:momma/utills/app_colors.dart';

class Indecator extends StatelessWidget {

  final bool selected;
  final double heightIndecator;
  final double widthIndecator;
  Indecator({required this.selected,required this.heightIndecator,required this.widthIndecator});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthIndecator,
      height: heightIndecator,
      decoration: BoxDecoration(color: selected? AppColor.Selected_indecator_colors:AppColor.Defalut_indecator_colors,borderRadius: BorderRadius.circular(7)),
    );
  }
}
