import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Add.dart';
import 'package:untitled1/single.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image(
                  image: AssetImage("lib/assets/pic.png"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Single()));},
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "lib/assets/pine2-removebg-preview.png"))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 185,left: 30),
                        child: Text("Monstera",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 185,left: 50),
                      child: Text("Pathos",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    ),
                    height: 230,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                                "lib/assets/money-removebg-preview.png"))),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 185,left: 50),
                    child: Text("Parlor Plam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                  height: 230,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/download-removebg-preview 1.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 185,left: 50),
                    child: Text("Aloe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                  height: 230,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/pngtree-hand-drawn-noise-illustration-green-potted-plant-green-leaf-design-element-png-image_4058540-removebg-preview 1.png"))),
                ),
              )
            ],),
          ),
          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));},
            child: Container(
              height: 50,
              child: Center(
                  child: Text(
                    "ADD",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(146, 215, 34, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
