import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailpage.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: _searchController,
                      cursorHeight: 20,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white)),
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          hintText: "Model",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[300],
                          ),
                          suffixIcon: _searchController.text.isEmpty
                              ? Container(
                                  width: 0,
                                )
                              : IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () => _searchController.clear(),
                                )),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.bars,
                          size: 35,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            color: Colors.black,
            width: double.infinity,
            child: Column(children: [
              Text(
                "Nike cambodia",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 270,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              child: GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => DetainPage())));
              },
              child: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    right: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.flame,
                      color: Colors.red[400],
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/shoe.png"))),
                          ),
                          Text(
                            "Nike",
                            style: TextStyle(
                                backgroundColor: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jorden x Dior",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          )),
        ]),
      ),
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Colors.black, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_crop_circle,
              color: Colors.black,
            ),
            label: ""),
      ]),
    );
  }
}
