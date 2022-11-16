import 'package:flutter/material.dart';
import 'package:teknisigo/theme.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int current = 0;

  List<String> items = ["Ongoing", "Riwayat"];

  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      return AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 131,
                        height: 35,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/bell.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 16),
                Image.asset(
                  'assets/shopping-cart.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      appBar: appBar(),
      body: Column(
        children: [
          // Tabbar
          Container(
            height: 60,
            padding: const EdgeInsets.only(left: 16),
            decoration: const BoxDecoration(color: Colors.white),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          margin: const EdgeInsets.all(5),
                          width: 93,
                          height: 44,
                          decoration: BoxDecoration(
                            color: current == index
                                ? Color(0xffE9FFFF)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: primaryTextStyle.copyWith(
                                  color: current == index
                                      ? primaryColor
                                      : Color(0xff8F9BB3)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          if (current == 0) ...[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(
                            top: 16,
                            right: 14,
                            bottom: 14,
                            left: 14,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'Cari pesanan...',
                              border: InputBorder.none,
                              hintStyle: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: regular,
                                color: Color(0xff8F9BB3),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/checkmark-circle.png',
                                  width: 20,
                                  height: 20,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 13),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 50,
                        width: 58,
                        child: Image.asset(
                          'assets/filter.png',
                          width: 24,
                          height: 24,
                        ),
                      )
                    ],
                  ),
                  HistoryCard(),
                  HistoryCard(),
                  HistoryCard(),
                  HistoryCard(),
                ],
              ),
            ),
          ] else if (current == 1) ...[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(
                            top: 16,
                            right: 14,
                            bottom: 14,
                            left: 14,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'Cari pesanan...',
                              border: InputBorder.none,
                              hintStyle: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: regular,
                                color: Color(0xff8F9BB3),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/checkmark-circle.png',
                                  width: 20,
                                  height: 20,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 13),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 50,
                        width: 58,
                        child: Image.asset(
                          'assets/filter.png',
                          width: 24,
                          height: 24,
                        ),
                      )
                    ],
                  ),
                  HistoryCard(),
                  HistoryCard(),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customDot(double spacing) {
      return Container(
        width: 5,
        height: 5,
        margin: EdgeInsets.symmetric(
          horizontal: spacing,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffE4E9F2),
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/service-laptop.png',
                width: 71,
                height: 71,
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '25/09/2022',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            color: Color(0xff8F9BB3),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Text(
                            '#000083979',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                              color: Color(0xff8F9BB3),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Perbaikan Laptop',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Asus',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        customDot(10),
                        Text(
                          'Gaming',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        customDot(10),
                        Expanded(
                          child: Text(
                            'ROG',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Lcd Blank',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 18),
          const Divider(
            thickness: 1,
            color: Color(0xffF0F3F8),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Biaya transportasi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Rp22.000',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                        color: Color(0xff28ACAF),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 28,
                padding: const EdgeInsets.only(
                    top: 6, right: 10, bottom: 6, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFBEA)),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffD6AD00),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      'Menunggu Pembayaransasaas',
                      style: primaryTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: medium,
                          color: Color(0xffD6AD00)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
