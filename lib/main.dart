import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
    Widget build(BuildContext context)
  {
    return MaterialApp(title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );}}

  class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key, required this.title}) : super(key: key);
    final String title;

    @override Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text("Product Listing")),
        body: ListView(shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(name: "iPhone XR",
                description: "iPhone XR is the stylist phone ever",
                price: 6000000,
                image: "iPhoneXR.jpg"),
            ProductBox(name: "iPhone 7Plus",
                description: "iPhone 7Plus is the most simple phone ever",
                price: 3000000,
                image: "iPhone7Plus.jpg"),
            ProductBox(name: "iPad Pro",
                description: "iPad Pro versatile iPad, offering a stunning display and a good performence",
                price: 15000000,
                image: "iPadPro.jpg"),
            ProductBox(name: "Apple Watch",
                description: "The Apple Watch is a line of smartwatches",
                price: 20000000,
                image: "AppleWatch.jpg"),
            ProductBox(name: "iPhone 15 Pro Max",
                description: "iPhone 15 Pro Max the new series",
                price: 25000000,
                image: "iPhone15ProMax.jpg"),
            ProductBox(name: "Macbook Air",
                description: "The MacBook Air is a thin and light laptop known for its elegant design and excellent performance.",
                price: 30000000,
                image: "MacbookAir.jpg"),

          ],
        ),
      );
    }
  }

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.name,required this.description,
    required this.price,required this.image}) :super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.all(2), height: 140,
      child: Card( child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Image.asset("images/"+image),
          Expanded( child: Container(padding: EdgeInsets.all(5),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(this.description), Text("Price: " + this.price.toString()),],))) ])));
  }
}
