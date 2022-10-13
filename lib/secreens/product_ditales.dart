import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/utills/product_detalis_text.dart';

class ProductDetalis extends StatefulWidget {
  const ProductDetalis({Key? key}) : super(key: key);

  @override
  State<ProductDetalis> createState() => _ProductDetalisState();
}

class _ProductDetalisState extends State<ProductDetalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Product Details',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
            child: ListView(
              children: [
                Image(image: AssetImage('images/Bg2.png')),
                ListTile(
                  title: Text(
                    'Handbag',
                    style: GoogleFonts.quicksand(
                        fontSize: 18,
                        color: Color(0xff111111),
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Bags',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Color(0xff87879D),
                    ),
                  ),
                  trailing: Text('125\$',
                      style: GoogleFonts.quicksand(
                          fontSize: 18,
                          color: Color(0xff444557),
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  height: 190,
                  decoration:
                      BoxDecoration(color: Color(0xffffffff), boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 3),
                        blurStyle: BlurStyle.outer,
                        blurRadius: 3)
                  ]),
                  child: Text(
                    TextDetalis,
                    style: GoogleFonts.roboto(
                        fontSize: 12, color: Color(0xff9393A7)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/bottomCart');
                    // showSnackBar(massage: 'Enter your email and password');
                  },
                  child: Text(
                    'ADD TO CART',
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 10,
              top: 0,
              child: Material(
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))))),
        ],
      ),
    );
  }
}
