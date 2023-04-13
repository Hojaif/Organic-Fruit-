import 'package:flutter/material.dart';
import 'package:shoppingapp/ProductDitels/Ditels.dart';
import 'package:shoppingapp/Style/Style.dart';

class Mango extends StatefulWidget {
  const Mango({Key? key}) : super(key: key);

  @override
  State<Mango> createState() => _MangoState();
}

class _MangoState extends State<Mango> {
  final List<dynamic> imageData = [
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি",
      "koliti":"কোয়ালিটি :Best",
      "jat":"জাতঃফজলি",
      "stoke":"স্টেকঃপণ্য টি খুব তারাতারি পাও্যা যযাবে"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
    },
    {
      "title":"ফজলি আম",
      "image":"https://i.postimg.cc/1RYDD0fP/Hapus-Mango-removebg-preview.png",
      "price":"৳২০টাকা/কেজি"
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
                        title: imageData[index]["title"],
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

