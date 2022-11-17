import 'package:flutter/material.dart';
import 'package:teknisigo/multi_select_chip.dart';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _category = ['Aksesoris', 'Laptop', 'Sparepart', 'Hardisk'];
  List<String> _collection = ['Terbaru', 'Rekomendasi', 'Promo'];

  List<String> _selectedCategory = [];
  List<String> _selectedCollection = [];

  @override
  Widget build(BuildContext context) {
    Widget customFilter() {
      Size size = MediaQuery.of(context).size;

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: 600,
                            child: DraggableScrollableSheet(
                              initialChildSize: 1,
                              minChildSize: 0.5,
                              maxChildSize: 1,
                              builder: (context, scrollController) {
                                return Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 50.0,
                                          height: 5.0,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            color: accentColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15.0),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Icon(
                                              Icons.clear_rounded,
                                              size: 26,
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          const Text(
                                            'Filter',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700,
                                                color: accentColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 32.0),
                                      const Text(
                                        'Kategori',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700,
                                            color: accentColor),
                                      ),
                                      const SizedBox(height: 10),
                                      MultiSelectChip(
                                        choiceList: _category,
                                        onSelectionChanged: (selectedList) {
                                          setState(() {
                                            _selectedCategory = selectedList;
                                          });
                                        },
                                        maxSelection: 4,
                                      ),
                                      const SizedBox(height: 32.0),
                                      const Text(
                                        'Koleksi',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700,
                                            color: accentColor),
                                      ),
                                      const SizedBox(height: 10),
                                      MultiSelectChip(
                                        choiceList: _collection,
                                        onSelectionChanged: (selectedList) {
                                          setState(() {
                                            _selectedCollection = selectedList;
                                          });
                                        },
                                        maxSelection: 3,
                                      ),
                                      const SizedBox(height: 32.0),
                                      const Text(
                                        'Harga',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700,
                                            color: accentColor),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.4,
                                            child: const Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  prefixText: 'Rp ',
                                                  prefixStyle: TextStyle(
                                                      color: Colors.black),
                                                  hintText: 'Mulai dari',
                                                  hintStyle: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Color(0xff8F9BB3)),
                                                  contentPadding:
                                                      EdgeInsets.all(10.0),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xffE4E9F2),
                                                        width: 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          SizedBox(
                                            width: size.width * 0.4,
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                prefixText: 'Rp ',
                                                prefixStyle: TextStyle(
                                                    color: Colors.black),
                                                hintText: 'Sampai',
                                                hintStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color(0xff8F9BB3)),
                                                contentPadding:
                                                    EdgeInsets.all(10.0),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10.0),
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xffE4E9F2),
                                                          width: 1,
                                                        )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 60),
                                      SizedBox(
                                        width: double.infinity,
                                        height: 56,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: primaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text(
                                            'Tampilkan',
                                            style: primaryTextStyle.copyWith(
                                              fontWeight: bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/ic-filter.png',
                    width: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Filter'),
                ],
              ),
            )
          ],
        ),
      );
    }

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
                  color: const Color(0xff28ACAF),
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
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            sparepartTitle(),
            sparepartProducts(),
            const SizedBox(height: 20),
            customFilter(),
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
