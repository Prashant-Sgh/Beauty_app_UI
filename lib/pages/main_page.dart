import 'package:beauty_app_ui/default_data/section_list.dart';
import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/main_page_section.dart';
import 'package:beauty_app_ui/default_data/advertisment_list.dart';
import 'package:beauty_app_ui/default_data/service_list.dart';
import 'package:beauty_app_ui/components/upcoming_services.dart';
import 'package:beauty_app_ui/constants.dart';
import 'package:beauty_app_ui/components/main_page_service_card.dart';
import 'package:beauty_app_ui/default_data/main_page_service_list.dart';

class MainPage extends StatefulWidget {
  final String userName;
  const MainPage({super.key, required this.userName});

  static String id = 'mainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _scrollController;
  // bool selectedSection = false;
  var selectedSection;

  @override
  void initState() {
    _scrollController = ScrollController(
      initialScrollOffset: 315 - 6.5,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'MeTime',
            style: TextStyle(fontFamily: 'Raleway-Bold', fontSize: 19),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icons/list.png'),
                      SizedBox(width: 7),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'Raleway-Medium', fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'Hello, ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: widget.userName,
                                style: TextStyle(
                                  fontFamily: 'Raleway-Bold',
                                  color: Color(0xFFFDCCC5),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 11),
            Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  // color: Colors.red,
                  // border: Border.all(width: 1, color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontFamily: 'Raleway-Medium',
                          fontSize: 14),
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF7A7A7A),
                      )),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                children: List.generate(advertismentList.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.5),
                    height: 140,
                    width: 315,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(advertismentList[index])),
                        // color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)),
                    // child: Text(
                    //   index.toString(),
                    //   style: TextStyle(color: Colors.black),
                    // ),
                  );
                }),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 29.0),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      sectionsList.length,
                      (index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedSection != index) {
                                  selectedSection = index;
                                }
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Center(
                                child: MainPageSection(
                                    sectionName: sectionsList[index],
                                    selected: (selectedSection == index)
                                        ? true
                                        : false),
                              ),
                            ));
                      },
                    )),
              ),
            ),
            SizedBox(height: 8),
            UpcomingServices(),
            SizedBox(height: 26),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      'Services',
                      style: kMainPageSectionNameStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 181,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(mainPageServiceList.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: MainPageServiceCard(
                              imagePath: mainPageServiceList[index]
                                  ['imagePath'],
                              service: mainPageServiceList[index]['service'],
                              time: mainPageServiceList[index]['time'],
                              price: mainPageServiceList[index]['price'],
                            ),
                          );
                        }),
                      ),
                    )),
                SizedBox(height: 50)
              ],
            )
          ],
        ),
      ),
    );
  }
}
