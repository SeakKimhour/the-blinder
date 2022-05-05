import 'package:bllinderproject/screen/shoppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetainPage extends StatefulWidget {
  const DetainPage({Key? key}) : super(key: key);

  @override
  State<DetainPage> createState() => _DetainPageState();
}

class _DetainPageState extends State<DetainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Air Jordan 1 High Dior",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/shoe.png"))),
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/shoe.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/shoe.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/shoe.png"))),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Icon(CupertinoIcons.heart)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: Text(
                  "Air Jordan 1 High Dior",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: ListTile(
                  title: Text(
                    "This is the most anticipated release of the year! Indeed, the collaboration between Air Jordan and Dior has sent a shockwave through the world sneakers... Imagined by Kim Jones, this pair of shoes is 'Made in Italy' and strikes the perfect balance between luxury and sports heritage. \n\nThe Air Jordan 1 High Dior features a premium calf leather upper, and predominantly white and grey colourways. The Dior monogram is emblazoned on the Swoosh, a detail that stands as a signature of this collaboration. Also, there is a new 'Air Dior' Wings and a branded translucent outsole, bringing the final touch to the design. \n\nThis edition is causing quite a stir in the world of sneakers and rightly so! With its history, expertise and brand associations, the AJ1 High Dior has everything it takes to win over the public's heart...",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListTile(
                  title: Text(
                    "Buy in Store",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage("assets/nike.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Nike Cambodia",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: Container(
                        alignment: Alignment.center,
                        width: 85,
                        height: 25,
                        decoration: BoxDecoration(
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
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10),
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Try On",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
