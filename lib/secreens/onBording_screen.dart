import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/utills/app_colors.dart';
import 'package:momma/utills/bordingtext.dart';
import 'package:momma/widgets/indecator.dart';
import 'package:momma/widgets/pageviewcontent.dart';

class OnBording_screen extends StatefulWidget {
  const OnBording_screen({Key? key}) : super(key: key);

  @override
  State<OnBording_screen> createState() => _OnBording_screenState();
}

class _OnBording_screenState extends State<OnBording_screen> {
  late PageController _pageController;
  int curantPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int selectedPage) {
              setState(() {
                curantPage = selectedPage;
              });
            },
            children: [
              PageViewContent(
                  image: 'bording3',
                  headText: 'Welcome!',
                  praText: PragraghBordingText1),
              PageViewContent(
                  image: 'bording1',
                  headText: 'Add to cart!',
                  praText: PragraghBordingText2),
              PageViewContent(
                  image: 'bording2',
                  headText: 'Enjoy Purchase!!',
                  praText: PragraghBordingText2),
            ],
          ),
          Positioned(
            bottom: 154,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Indecator(selected: curantPage == 0,widthIndecator: 18,heightIndecator: 4,),
                SizedBox(
                  width: 5,
                ),
                Indecator(selected: curantPage == 1,widthIndecator: 18,heightIndecator: 4,),
                SizedBox(
                  width: 5,
                ),
                Indecator(selected: curantPage == 2,widthIndecator: 18,heightIndecator: 4,),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 33,
            child: Visibility(
              visible: curantPage != 2,
              child: TextButton(
                onPressed: () {
                  _pageController.jumpToPage(2);
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.quicksand(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff6C8EF2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 63,
            right: 0,
            left: 0,
            child: Visibility(
              visible: curantPage == 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginScreen');
                  },
                  child: Text(
                    'START',
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
