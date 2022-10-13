import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/pref/shardPrefController.dart';

class Lunch_Screen extends StatefulWidget {
  const Lunch_Screen({Key? key}) : super(key: key);

  @override
  State<Lunch_Screen> createState() => _Lunch_ScreenState();
}

class _Lunch_ScreenState extends State<Lunch_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      // String routs=ShardPrefController().logenIn?'/homeScreen': '/loginScreen';
      String routs=ShardPrefController().getValueFor<bool>(key: prefKeys.logenIn.name)?? false ?'/homeScreen': '/loginScreen';
      Navigator.pushReplacementNamed(context, routs);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/lunchBackground.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text('MOMMA.',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,letterSpacing: 5),),
            SizedBox(height: 24,),
            Text('FASHIONS.',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 5,fontStyle: FontStyle.italic),),
          ],
        ),
      ),
    );
  }
}
