import 'package:flutter/material.dart';


import '../../../util/style.dart';

class AmerAchar extends StatefulWidget {
  const AmerAchar({Key? key}) : super(key: key);

  @override
  State<AmerAchar> createState() => _AmerAcharState();
}

class _AmerAcharState extends State<AmerAchar> {
  bool isFavorite = false;
  final List<dynamic> _acharData = [
    {
      "title":"ফজলি আমের আচার",
      "image":"https://i.postimg.cc/0QqcwCkB/images-3-removebg-preview.png",
      "price":"৳৫টাকা/পিছ",
      "koliti":"কোয়ালিটি:Best",
      "jat":"জাতঃফজলি",
      "sthok":"স্টোকঃপন্যটি খুব শিগ্রই পাওয়া যাবে"
    },
    


  ];
   @override
  Widget build(BuildContext context) {
    final itemWidth = (MediaQuery.of(context).size.width - 32) /
        (MediaQuery.of(context).size.width > 800 ? 6 : 2);
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
    body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: _acharData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 800 ? 6 : 2,
                childAspectRatio: itemWidth / (itemWidth + 32),
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Stack(
                    children: [
                      InkWell(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => Ditels(
                        //             imageUrl: imageData[index]["image"],
                        //             title: imageData[index]["title"],
                        //             koliti:imageData[index]["koliti"],
                        //             jat:imageData[index]["jat"],
                        //             sthok:imageData[index]["sthok"],
                        //             price:imageData[index]["price"]
                        //           )));
                        // },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width > 800
                                      ? 16
                                      : 8),
                              child: Image.network(
                                _acharData[index]['image'],
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
                              _acharData[index]['title'],
                              style: TextStyle(
                                fontFamily: 'solaimanlipi',
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width > 800
                                        ? 25
                                        : 18,
                              ),
                            ),
                            Text(
                              _acharData[index]['price'],
                              style: TextStyle(
                                fontFamily: 'solaimanlipi',
                                color: Colors.grey,
                                fontSize:
                                    MediaQuery.of(context).size.width > 800
                                        ? 25
                                        : 18,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                            // icon: const Icon(
                            //   Icons.favorite_border,
                            //   color: Colors.red,
                            // ),
                          ),
                        ),
                      ),

                      // add to cart button in bottom and grren color full width

                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
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
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
