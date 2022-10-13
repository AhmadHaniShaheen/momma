import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff000000),)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Search',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32.0, left: 32),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 14,),
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xff474459).withOpacity(.6))),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Product Name…',
                  style: GoogleFonts.quicksand(
                  fontSize: 12, color: Color(0xff9E9DB0),fontWeight: FontWeight.w600),textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 132 / 214,
                ),
                itemBuilder: (context, index) {
                  return Scrollbar(
                    thickness: 5,
                    child: InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/loginScreen');
                      },
                      child: Card(
                        child: Stack(
                          children: [

                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image(image: AssetImage('images/thardBage.png')),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Hand bags',
                                    style: GoogleFonts.roboto(
                                        fontSize: 20, color: Color(0xff474559)),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    '\$10.00',
                                    style: GoogleFonts.roboto(
                                        fontSize: 15, color: Color(0xff9E9DB0)),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            )

          ],
        ),
      ),
    );
  }
}
