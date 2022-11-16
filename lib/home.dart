import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:teknisigo/style.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> imageSliders = []
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset('assets/service-laptop.png',
                          fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'bisa aja di looping',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: duabelas),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(tigadua),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: duadua,
                    ),
                    Text(
                      'Hai fahmi, mau perbaiki apa ?',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: tujuhbelas),
                    ),
                    Responsive(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: <Widget>[
                          Div(
                            divison: const Division(
                              colS: 3,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: duabelas,
                                vertical: duapuluh,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(duapuluh),
                              ),
                              child: Column(children: [
                                Image.asset('assets/service-laptop.png'),
                                Text(
                                  'Laptop',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                ),
                              ]),
                            ),
                          ),
                          Div(
                            divison: const Division(
                              colS: 3,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: duabelas,
                                vertical: duapuluh,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(duapuluh),
                              ),
                              child: Column(children: [
                                Image.asset('assets/service-laptop.png'),
                                Text(
                                  'Komputer',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                ),
                              ]),
                            ),
                          ),
                          Div(
                            divison: const Division(
                              colS: 3,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: duabelas,
                                vertical: duapuluh,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(duapuluh),
                              ),
                              child: Column(children: [
                                Image.asset('assets/service-laptop.png'),
                                Text(
                                  'Printer',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                ),
                              ]),
                            ),
                          ),
                          Div(
                            divison: const Division(
                              colS: 3,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: duabelas,
                                vertical: duapuluh,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(duapuluh),
                              ),
                              child: Column(children: [
                                Image.asset('assets/service-laptop.png'),
                                Text(
                                  'Jaringan',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                ),
                              ]),
                            ),
                          ),
                        ]),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: duakomalima,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                      ),
                      items: imageSliders,
                    ),
                    SizedBox(
                      height: limapuluh,
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: sepuluh),
              padding: EdgeInsets.only(left: duapuluh),
              child: Expanded(
                child: Text(
                  'Pricelist',
                  style: primaryTextStyle.copyWith(
                      fontSize: duapuluh, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(duapuluh),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: seratuslapanpuluh,
                          height: satuenampuluh,
                          margin: const EdgeInsets.only(top: 16, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(duabelas),
                            color: Colors.white,
                          ),
                          child: Image.network(
                            'https://ik.imagekit.io/6cdnasues/favicon_XiC4Sg9jG.png',
                            height: sepuluh,
                            width: sepuluh,
                          ),
                        ),
                        Container(
                          width: seratuslapanpuluh,
                          height: satuenampuluh,
                          margin: const EdgeInsets.only(top: 16, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(duabelas),
                            color: Colors.white,
                          ),
                          child: Image.network(
                            'https://ik.imagekit.io/6cdnasues/favicon_XiC4Sg9jG.png',
                            height: sepuluh,
                            width: sepuluh,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: sepuluh),
              padding: EdgeInsets.only(left: duapuluh),
              child: Expanded(
                child: Text(
                  'Pesanan',
                  style: primaryTextStyle.copyWith(
                      fontSize: duapuluh, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: duadua),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(
                        right: 16, bottom: 16, left: 16, top: 10),
                    padding: const EdgeInsets.all(duabelas),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(duabelas),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(nolkomalima),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/service-laptop.png',
                              width: tujupuluh,
                              height: tujupuluh,
                            ),
                            const SizedBox(width: duabelas),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '12/12/12',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: duabelas,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  '#1201212',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: empatbelas,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  'famiozi',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                  maxLines: 1,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(
                        right: 16, bottom: 16, left: 16, top: 10),
                    padding: const EdgeInsets.all(duabelas),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(duabelas),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(nolkomalima),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/service-laptop.png',
                              width: tujupuluh,
                              height: tujupuluh,
                            ),
                            const SizedBox(width: duabelas),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '12/12/12',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: duabelas,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  '#1201212',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: empatbelas,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  'famiozi',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: duabelas),
                                  maxLines: 1,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Visibility(
            //     visible: false,
            //     child: Container(
            //       // width: screenWidth(context),
            //       padding: EdgeInsets.all(tigadua),
            //       child: Image.asset(
            //         'assets/service-laptop.png',
            //       ),
            //     )),
            // Visibility(
            //   visible: true,
            //   child: Column(
            //     children: [
            //       ListView.builder(
            //           scrollDirection: Axis.vertical,
            //           shrinkWrap: true,
            //           itemCount: 3,
            //           itemBuilder: (BuildContext contex, int index) {
            //             return Container(
            //               margin: const EdgeInsets.only(
            //                   right: 16, bottom: 16, left: 16, top: 10),
            //               padding: const EdgeInsets.all(duabelas),
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(duabelas),
            //                   color: Colors.white,
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(nolkomalima),
            //                       spreadRadius: 3,
            //                       blurRadius: 8,
            //                       offset: const Offset(
            //                           0, 3), // changes position of shadow
            //                     ),
            //                   ]),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Image.asset(
            //                         'assets/service-laptop.png',
            //                         width: tujupuluh,
            //                         height: tujupuluh,
            //                       ),
            //                       const SizedBox(width: duabelas),
            //                       Column(
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         children: [
            //                           Text(
            //                             '12/12/12',
            //                             overflow: TextOverflow.ellipsis,
            //                             style: primaryTextStyle.copyWith(
            //                               fontSize: duabelas,
            //                             ),
            //                           ),
            //                           const SizedBox(height: 18),
            //                           Text(
            //                             '#1201212',
            //                             overflow: TextOverflow.ellipsis,
            //                             style: primaryTextStyle.copyWith(
            //                               fontSize: empatbelas,
            //                               fontWeight: FontWeight.bold,
            //                             ),
            //                           ),
            //                           const SizedBox(height: 18),
            //                           Text(
            //                             'famiozi',
            //                             overflow: TextOverflow.ellipsis,
            //                             style: primaryTextStyle.copyWith(
            //                                 fontSize: duabelas),
            //                             maxLines: 1,
            //                           )
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             );
            //           })
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
