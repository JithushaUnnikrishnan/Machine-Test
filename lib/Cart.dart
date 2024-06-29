import 'package:flutter/material.dart';
import 'package:untitled1/photo.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60,left: 30),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Text("MY CART",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          )
          ,
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Card(
              child: ListTile(
                leading: Image(image: AssetImage("lib/assets/money-removebg-preview.png")),
                title: Text("Monstera"),
                trailing: Icon(Icons.delete),
              ),
            ),

          ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Card(
          child: ListTile(
            leading: Image(image: AssetImage("lib/assets/money-removebg-preview.png")),
            title: Text("Monstera"),
            trailing: Icon(Icons.delete),
          ),
        ),),
          SizedBox(height: 500,),
          Row(
            children: [
              Container(
                height: 50,
                child: Center(
                    child: Text(
                      "Buy",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(146, 215, 34, 1)),
              ),
              SizedBox(width: 70,),
              InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo()));},
                child: Container(
                  height: 50,
                  child: Center(
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(146, 215, 34, 1)),
                ),
              )
            ],
          )
        ],),
      ),
    );
  }
}
