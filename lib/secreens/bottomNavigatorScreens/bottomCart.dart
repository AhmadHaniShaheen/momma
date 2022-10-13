import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomCart extends StatefulWidget {
  const BottomCart({Key? key}) : super(key: key);

  @override
  State<BottomCart> createState() => _BottomCartState();
}

class _BottomCartState extends State<BottomCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Cart',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33, top: 25),
        child: ListView(
          children: [
            Text(
              '3 items available',
              style: GoogleFonts.quicksand(
                  fontSize: 18,
                  color: Color(0xff111111),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 465,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 107,
                          child: Row(
                            children: [
                              Image(image: AssetImage('images/Clip.png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'Handbag',
                                    style: GoogleFonts.quicksand(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff111111),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'from boots category',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14, color: Color(0xffA1A1B4)),
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    '\$100',
                                    style: GoogleFonts.quicksand(
                                        color: Color(0xff111111),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xff161616),
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Color(0xffffffff),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.close,
                                            color: Color(0xff161616),
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Material(
                                        elevation: 6,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xffFFFFFF),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.remove)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '2',
                                        style: GoogleFonts.quicksand(
                                            fontSize: 16,
                                            color: Color(0xff161616)),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Material(
                                        elevation: 6,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xffFFFFFF),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total:',
                  style: GoogleFonts.roboto(
                      fontSize: 14, color: Color(0xffA1A1B4)),
                ),
                Text(
                  '\$100',
                  style: GoogleFonts.quicksand(
                      fontSize: 16,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax(15%)::',
                  style: GoogleFonts.roboto(
                      fontSize: 14, color: Color(0xffA1A1B4)),
                ),
                Text(
                  '\$15',
                  style: GoogleFonts.quicksand(
                      fontSize: 16,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Color(0xffECECEC),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '\$215',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/paymentMethod');
              },
              child: Text(
                'Checkout',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                minimumSize: Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Color(0xffC9D8E7))),
              ),
              onPressed: () {
                CnacelOrderAlert();
                // Navigator.pushReplacementNamed(context, '/homeScreen');
              },
              child: Text(
                'Cancel Order',
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff474459)),
              ),
            ),
            SizedBox(
              height: 33,
            )
          ],
        ),
      ),
    );
  }

  void CnacelOrderAlert() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Image(
            image: AssetImage('images/cancel.png'),
          ),
          content: Text('Are you sure you want \nto cancel this order?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bottomHome');
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.nunitoSans(
                    fontSize: 20, color: Color(0xffFFFFFF)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Not Now!',
                style: GoogleFonts.nunitoSans(
                    fontSize: 20, color: Color(0xffFFFFFF)),
              ),
            ),

          ],
        );
      },
    );
  }
}
