import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknisigo/detail_product.dart';
import 'package:teknisigo/history.dart';
import 'package:teknisigo/home.dart';
import 'package:teknisigo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget sparepartTitle() {
      return Container(
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Sparepart',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView())),
              child: Text(
                'Lihat Semua',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: regular,
                  color: Color(0xff28ACAF),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget sparepartProducts() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(
                imageProduct: 'assets/product1.png',
                titleProduct:
                    'WD My Passport 2TB - HD HDD Hardisk Eksternal External 2.5" USB 3.0 - Hitam',
                priceProduct: '670.000',
              ),
              ProductCard(
                imageProduct: 'assets/product1.png',
                titleProduct: 'WD My Passport 2TB - HD HDD',
                priceProduct: '670.000',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 30),
            sparepartTitle(),
            sparepartProducts(),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryPage(),
                    ));
              },
              child: Text('ini buat ke halaman riwayat pesanan'),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageProduct;
  final String titleProduct;
  final String priceProduct;

  const ProductCard({
    super.key,
    required this.imageProduct,
    required this.titleProduct,
    required this.priceProduct,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProduct(),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 256,
        margin: const EdgeInsets.only(top: 16, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.asset('$imageProduct'),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, right: 12, bottom: 16, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleProduct,
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rp${priceProduct}',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: extraBold,
                        color: primaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
