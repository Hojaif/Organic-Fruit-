import 'package:flutter/material.dart';
import 'package:shoppingapp/ProductDitels/Ditels.dart';
import 'package:shoppingapp/Style/Style.dart';

class Gi extends StatefulWidget {
  const Gi({Key? key}) : super(key: key);

  @override
  State<Gi> createState() => _GiState();
}

class _GiState extends State<Gi> {
  final List<dynamic> imageData = [
    {
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },{
      "title":"খাটি ঘি",
      "image":"https://i.postimg.cc/L5wLFHbZ/images-5-removebg-preview.png",
      "price":"৳৬৫৭টাকা/কেজি"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView.builder(
          itemCount: imageData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          shrinkWrap: true,
          // ignore: non_constant_identifier_names
          itemBuilder: (context, index) {
            return Transform.translate(
              offset: Offset(1.0, index.isOdd ? 0 : 0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Ditels(
                        imageUrl: imageData[index]["image"],
                      )));
                },
                child: Card(
                  elevation: 4,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 9,),
                        SizedBox(
                            height: 113,
                            width: 200,
                            child: Image.network(imageData[index]["image"])),
                        Text("${imageData[index]["title"]}",style: Head2Text(Colors.black),),
                        Text("${imageData[index]["price"]}",style: Head2Text(Colors.black),),
                        SizedBox(height: 15,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: ListTile(
                              leading: Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,
                              ),
                              title: Text(
                                "অর্ডার করুন",
                                style:TextStyle(
                                  fontSize: 14.4,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

