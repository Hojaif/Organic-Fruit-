import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/util/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> category = [
    {
      'title': 'আম',
      'image': 'https://i.postimg.cc/CK9RKv4W/download-5-removebg-preview.png',
    },
    {
      'title': 'পাটালি গুর',
      'image': 'https://i.postimg.cc/dQWCK1Kk/download-4-removebg-preview.pngg',
    },
    {
      'title': 'আমের আচার',
      'image': 'https://i.postimg.cc/0QqcwCkB/images-3-removebg-preview.png',
    },
    {
      'title': 'ফজলি আম',
      'image': 'https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png',
    },
    {
      'title': 'খাটি মধু',
      'image': 'https://i.postimg.cc/3rCyFF1H/download-6.jpg',
    },
    {
      'title': 'ঘি',
      'image': 'https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final itemWidth = (MediaQuery.of(context).size.width - 32) /
        (MediaQuery.of(context).size.width > 800 ? 6 : 3);
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              color: Colors.lightGreen,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: size.height * 0.2,
                        width: size.width * 0.4,
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
                            )),
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
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: category.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 800 ? 6 : 3,
                  childAspectRatio: itemWidth / (itemWidth + 32),
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () => {
                        Get.toNamed(category[index]['route']),
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // decoration: const BoxDecoration(
                            //   shape: BoxShape.circle,
                            //   color: Colors.lightGreen,
                            // ),
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width > 800
                                    ? 16
                                    : 8),
                            // child: Icon(
                            //   category[index]['image'],
                            //   color: Colors.white,
                            //   size: MediaQuery.of(context).size.width > 800
                            //       ? 42
                            //       : 48,
                            // ),
                            child: Image.network(
                              category[index]['image'],
                              height: MediaQuery.of(context).size.width > 800
                                  ? 42
                                  : 48,
                              width: MediaQuery.of(context).size.width > 800
                                  ? 42
                                  : 48,
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width > 800
                                  ? 8
                                  : 16),
                          Text(
                            category[index]['title'],
                            style: TextStyle(
                              fontFamily: 'solaimanlipi',
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.width > 800
                                  ? 25
                                  : 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
