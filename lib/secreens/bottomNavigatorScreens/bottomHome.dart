import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/pref/shardPrefController.dart';
import 'package:momma/secreens/tabBarScreens/bootsScreen.dart';
import 'package:momma/secreens/tabBarScreens/handbags.dart';
import 'package:momma/secreens/tabBarScreens/kinsaScreen.dart';
import 'package:momma/secreens/tabBarScreens/mensScreen.dart';
import 'package:momma/secreens/tabBarScreens/womensScreen.dart';
class BottomHome extends StatefulWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  State<BottomHome> createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> with SingleTickerProviderStateMixin{
  late TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this,initialIndex:2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Home',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        bottom: TabBar(
            controller: _tabController,
            onTap: (int selectedTabScreen) {
              print(selectedTabScreen);
            },
            isScrollable: true,
            indicatorPadding: EdgeInsets.only(top: 15),
            // indicatorWeight:3,
            indicatorColor: Color(0xff6A90F2),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Kinsa',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xff474559),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Womens',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xff474559),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                  child: Text(
                    'Handbags',
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: Color(0xff474559),
                        fontWeight: FontWeight.bold),
                  )),
              Tab(
                  child: Text(
                    'Boots',
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: Color(0xff474559),
                        fontWeight: FontWeight.bold),
                  )),
              Tab(
                  child: Text(
                    'Mens',
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: Color(0xff474559),
                        fontWeight: FontWeight.bold),
                  )),
            ]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/searchScreen');
              },
              icon: Icon(
                Icons.search,
                color: Color(0xff474559),
              )),
          IconButton(
            onPressed: ()async{
              bool cleard= await ShardPrefController().clear();
              if(cleard){
                Navigator.pushReplacementNamed(context, '/loginScreen');
              }
            },
            icon:Icon(Icons.logout,color: Color(0xff474559)),
          ),
        ],
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
        KinsaScreen(),
        WomensScreen(),
        HandBages(),
        BootsScreen(),
        MensScreen(),
      ]),

    );
  }
}
