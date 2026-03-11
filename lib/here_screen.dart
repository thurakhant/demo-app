import 'package:flutter/material.dart';
import 'package:myapp/model.dart';

class HereScreen extends StatefulWidget {
  const HereScreen({super.key});

  @override
  State<HereScreen> createState() => _HereScreenState();
}

class _HereScreenState extends State<HereScreen> {
  int totalAmount = 0;
  List<ProductModel> products = [
    ProductModel(
      name: 'iPhone 17',
      price: 100000,
      quantity: 10,
      image: "assets/iphone17.png",
      color: "Gold",
      description: "Good Conditions",
    ),
    ProductModel(
      name: 'iPhone X',
      price: 50000,
      quantity: 10,
      image: "assets/iphoneX.png",
      color: "White",
      description: "White Color",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalAmount = totalAmount - products[0].price;
                        });
                      },
                      icon: Icon(Icons.remove_circle_outline_sharp),
                    ),
                    Icon(Icons.mail),
                    Text("${products[0].name} - ${products[0].price} MMK"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalAmount = totalAmount + products[0].price;
                        });
                      },
                      icon: Icon(Icons.add_box_outlined),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 100,
                height: 100,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalAmount = totalAmount - products[1].price;
                        });
                      },
                      icon: Icon(Icons.remove_circle_outline_sharp),
                    ),
                    Icon(Icons.mail),
                    Text("${products[1].name} - ${products[1].price} MMK"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalAmount = totalAmount + products[1].price;
                        });
                      },
                      icon: Icon(Icons.add_box_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        color: Colors.blue,
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              '$totalAmount MMK',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
