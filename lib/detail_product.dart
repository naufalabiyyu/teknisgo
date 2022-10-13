import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:teknisigo/theme.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  List imgList = [
    'assets/productDetail.png',
    'assets/productDetail.png',
    'assets/productDetail.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      return AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff121924),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/arrow-left.png',
            width: 20,
            height: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'WD My Passport 2TB - HD HDD Hardisk Eksternal External 2.5" USB 3.0 - Hitam',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/shopping-cart.png',
              width: 24,
              height: 24,
            ),
          )
        ],
        elevation: 0,
      );
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? Color(0xff28ACAF) : Color(0xffC4C4C4),
        ),
      );
    }

    Widget heroImage() {
      int index = -1;

      return Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider(
                items: imgList
                    .map((item) => Image.asset(
                          item,
                          width: MediaQuery.of(context).size.width,
                          height: 374,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((e) {
                    index++;
                    return indicator(index);
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget shortInfo() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CAH',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'D My Passport 2TB - HD HDD Hardisk Eksternal External 2.5" USB 3.0 - Hitam',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Rp670.000',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: extraBold,
                color: primaryColor,
              ),
            )
          ],
        ),
      );
    }

    Widget detailInfo() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Produk',
              style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('Min. Pemesanan'),
                const SizedBox(width: 5),
                Text('1 Pcs'),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              color: Color(0xffF0F3F8),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text('Kategori'),
                const SizedBox(width: 58),
                RichText(
                  text: TextSpan(
                    style: primaryTextStyle.copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: 'Aksesoris',
                        style: primaryTextStyle.copyWith(
                            fontWeight: bold, color: primaryColor),
                      ),
                      const WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                        ),
                      ),
                      const TextSpan(text: '>'),
                      const WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                        ),
                      ),
                      TextSpan(
                        text: 'Hardware',
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              color: Color(0xffF0F3F8),
            ),
            const SizedBox(height: 12),
            Text(
              "Matte surface with a medium body structure. Woven with plain weave and applicable for Men or Women Shirt, Dress and Beddings...",
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Selengkapnya',
                  style: primaryTextStyle.copyWith(
                      color: primaryColor, fontWeight: bold),
                ),
                Icon(
                  Icons.chevron_right_sharp,
                  color: primaryColor,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffCF0F5F8),
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  heroImage(),
                  shortInfo(),
                  detailInfo(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            width: double.infinity,
            height: 70,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Bag-Outline.png'),
                  Text(
                    'Tambah ke keranjang',
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
