import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoppingapp/util/style.dart';

class Ditels extends StatelessWidget {
  String imageUrl;
  String title;
  String koliti;
  String jat;
  String sthok;
  String price;
  Ditels(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.koliti,
      required this.jat,
      required this.sthok,
      required this.price});

  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;

    final Size size = MediaQuery.of(context).size;
    final itemWidth = (MediaQuery.of(context).size.width - 32) /
        (MediaQuery.of(context).size.width > 800 ? 6 : 3);
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 280 : 286,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 800 : 800,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Image.network(
                        imageUrl,
                        height:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                        width:
                            MediaQuery.of(context).size.width > 800 ? 42 : 48,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: Head1Text(Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      koliti,
                      style: Head2Text(Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      jat,
                      style: Head2Text(Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sthok,
                      style: Head2Text(Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "স্টোকঃআছে",
                      style: Head2Text(Colors.greenAccent),
                    ),
                    Row(
                      children: [
                        Text(
                          "দামঃ",
                          style: Head2Text(Colors.black),
                        ),
                        Text(
                          price,
                          style: Head2Text(Colors.black),
                        ),
                      ],
                    ),
                    Text("ঝুড়ির সাইজ"),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: AppInputDecoration("সাইজ নির্বাচন করুন"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("পরিমান"),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: AppInputDecoration("পরিমান নির্বাচন করুন"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.width > 800 ? 40 : 46,
                          width: MediaQuery.of(context).size.width > 800
                              ? 130
                              : 136,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            // borderRadius: BorderRadius.only(
                            //   bottomLeft: Radius.circular(10),
                            //   bottomRight: Radius.circular(10),
                            // ),
                          ),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'অর্ডার করুন',
                              style: TextStyle(
                                fontFamily: 'solaimanlipi',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.width > 800 ? 40 : 46,
                          width: MediaQuery.of(context).size.width > 800
                              ? 130
                              : 136,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            // borderRadius: BorderRadius.only(
                            //   bottomLeft: Radius.circular(10),
                            //   bottomRight: Radius.circular(10),
                            // ),
                          ),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'পছন্দ',
                              style: TextStyle(
                                fontFamily: 'solaimanlipi',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
            thickness: 3,
            color: Colors.grey[350],
          ),
          Column(
            children: [
              Text("gffgghcnbgf dhgcvdhgfcvjh kgfjdvfgd sfvhcgfdvc dgvchvcjfc")
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
