import 'package:flutter/material.dart';

TextStyle Head1Text(textColor) {
  return TextStyle(
      color: textColor,
      fontSize: 27,
      fontWeight: FontWeight.w700,
      fontFamily: 'HindSiliguri');
}

TextStyle Head2Text(textColor) {
  return TextStyle(
      color: textColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'HindSiliguri');
}

TextStyle Head3Text(textColor) {
  return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'HindSiliguri');
}

TextStyle Head4Text(textColor) {
  return TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'solaimanlipi');
}

// AppBar
AppBar AllAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.black, //change color on your need
    ),
    actions: [
      Row(
        children: [
          const Icon(
            Icons.home,
            color: Colors.black,
          ),
          Text(
            "হোম",
            style: Head2Text(Colors.black),
          ),
        ],
      ),
      const SizedBox(
        width: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.black,
            ),
            Text(
              "সার্চ",
              style: Head2Text(Colors.black),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.white,
                ),
                Text(
                  "আইটেম",
                  style: Head2Text(Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

// Drawer
Drawer AllDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            accountName: Text("Md Abdur Rahman"),
            accountEmail: Text("mmmm.rahman77@gmail.com"),
            currentAccountPicture: Icon(
              Icons.person,
              size: 80,
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "আম",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "পাটালি গুড়",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "আমের আঁচার",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "আমের চারা",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "খাঁটি মধু",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  "ঘি",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[350],
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  "লগইন",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.notifications_rounded),
                title: Text(
                  "বার্তা",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[350],
          ),
          Column(
            children: [
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: const Icon(
                      Icons.question_mark_rounded,
                      size: 18,
                    )),
                title: Text(
                  "কিভাবে কিনবেন",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: const Icon(
                      Icons.question_mark_outlined,
                      size: 18,
                    )),
                title: Text(
                  "আমদের সম্পর্কে",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: Text(
                  "যোগাযোগ ",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: const Icon(
                      Icons.question_mark_rounded,
                      size: 18,
                    )),
                title: Text(
                  "শর্ত সমুহ",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: const Icon(
                      Icons.question_mark_rounded,
                      size: 18,
                    )),
                title: Text(
                  "ফেরত নীতি",
                  style: Head4Text(Colors.black),
                ),
                minLeadingWidth: 0,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//
ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));
}



// Text Filde

InputDecoration AppInputDecoration(label){
  return InputDecoration(
      focusedBorder:   OutlineInputBorder(
        borderSide:  BorderSide(color:Colors.black45 , width: 1),
      ),
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color:Colors.white , width: 0.0),
      ),
      border: OutlineInputBorder(),
      labelText: label
  );
}
