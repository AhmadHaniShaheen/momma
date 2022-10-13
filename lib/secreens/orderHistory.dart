import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Order History',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32, left: 32),
        child: ListView(
          children: [
            Text(
              '4 items available',
              style: GoogleFonts.quicksand(
                  fontSize: 18,
                  color: Color(0xff111111),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 625,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: 16,
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
                ElevatedButton(onPressed: (){}, child: Text(
                  '\$215',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold),
                ),)
              ],
            ),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}
