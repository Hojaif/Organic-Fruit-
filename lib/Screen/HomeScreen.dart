import 'package:flutter/material.dart';
import 'package:shoppingapp/Screen/ProductScreen/AmerAchar.dart';
import 'package:shoppingapp/Screen/ProductScreen/Gi.dart';
import 'package:shoppingapp/Screen/ProductScreen/KhatiModu.dart';
import 'package:shoppingapp/Screen/ProductScreen/MangoScreen.dart';
import 'package:shoppingapp/Screen/ProductScreen/PataliGur.dart';
import 'package:shoppingapp/Style/Style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              color: Colors.lightGreen,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 200,
                        width: 150,
                        child: Image.network(
                            "https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png")),
                    Text(
                      "ফজলি আম",
                      style: Head1Text(Colors.white),
                    ),
                    Text(
                      "প্রতি কেজি আম ১০০৳ মাত্র",
                      style: Head2Text(Colors.black45),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          )
                        ),
                        child: Center(
                            child: Text(
                          "এখানে এড করুন",
                          style: Head2Text(Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "-জনপ্রিয়-",
              style: Head1Text(Colors.black45),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Mango()),
                    );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                    "https://i.postimg.cc/CK9RKv4W/download-5-removebg-preview.png")),
                            Text(
                              "আম",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const PataliGur()),
                    // );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.network(
                                  "https://i.postimg.cc/dQWCK1Kk/download-4-removebg-preview.png"),
                            ),
                            Text(
                              "পাটালি গুর",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const AmerAchar()),
                    // );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.network(
                                  "https://i.postimg.cc/0QqcwCkB/images-3-removebg-preview.png"),
                            ),
                            Text(
                              "আমের আচার",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const AmerAchar()),
                    // );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                    "https://i.postimg.cc/xdhsg20q/images-4.jpg")),
                            Text(
                              "আমের চারা",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const KhatiModu()),
                    // );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                    "https://i.postimg.cc/3rCyFF1H/download-6.jpg")),
                            Text(
                              "খাটি মধু",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Gi()),
                    // );
                  },
                  child: Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                    "https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png")),
                            Text(
                              "ঘি",
                              style: Head2Text(Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
