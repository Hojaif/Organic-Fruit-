import 'package:flutter/material.dart';
import 'package:shoppingapp/Style/Style.dart';

class Ditels extends StatelessWidget {
  String imageUrl;
  String title;
  Ditels({Key? key, required this.imageUrl,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllAppBar(),
      drawer: AllDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 400,
            child: Card(
              elevation: 1,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.5,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,style: Head1Text(Colors.black),),
                  SizedBox(height: 7,),
                  Text(""),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
