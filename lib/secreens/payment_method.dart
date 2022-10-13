import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Payment Method',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32.0, top: 33),
        child: ListView(
          children: [
            Container(
              height: 180,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff6C8EF2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.payment,
                    color: Color(0xffffffff),
                    size: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1234 5678 9876 5432',
                        style: GoogleFonts.quicksand(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '1234',
                        style: GoogleFonts.quicksand(
                            fontSize: 14,
                            color: Color(0xffC7C7C7),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'James Born',
                        style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'EXPIRY',
                          style: GoogleFonts.quicksand(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC7C7C7),
                          ),
                          children: [
                            TextSpan(text: '03/17',
                              style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600),)
                          ]
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 56,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle:
                GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'MM/YY',
                hintStyle:
                GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'CCV',
                hintStyle:
                GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/paymentSuccessful');
              },
              child: Text(
                'Proceed',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
