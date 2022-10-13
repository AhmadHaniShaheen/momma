import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/utills/app_colors.dart';

class PageViewContent extends StatelessWidget {
  final String image;
  final String headText;
  final String praText;

  PageViewContent(
      {required this.image, required this.headText, required this.praText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 194.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(image: AssetImage('images/$image.png')),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                Text(
                  headText,
                  style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.Bording_head_colors,),),
                SizedBox(
                  height: 16,
                ),
                Text(
                  praText,
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: AppColor.Bording_pragraph_colors,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
