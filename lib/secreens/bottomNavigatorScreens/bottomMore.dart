import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomMore extends StatefulWidget {
  const BottomMore({Key? key}) : super(key: key);

  @override
  State<BottomMore> createState() => _BottomMoreState();
}

class _BottomMoreState extends State<BottomMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 56,
          ),
          SizedBox(
            height: 150,
            child: Image(
              image: AssetImage('images/Bg.png'),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'John Deo',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xff444657),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'johndeo@yourmail.com',
                  style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: Color(0xff87879D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 64,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Divider();
                    },
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 33.0,vertical: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/profileScreen');
                          },
                          child: Row(
                            children: [
                              Icon(Icons.person,color: Color(0xff87879D),),
                              SizedBox(width: 32,),
                              Text('Profile',style: GoogleFonts.quicksand(fontSize: 16,color: Color(0xff87879D)),)
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 6)
              ],
            ),
          )
        ],
      ),
    );
  }
}
