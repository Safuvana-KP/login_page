import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Product_Model.dart';
import 'detail_page/Detail_page.dart';


class HomePage extends StatefulWidget {
final Product product;
  const HomePage( {super.key, required this.product});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Product List",style: TextStyle( fontSize: 17,fontWeight: FontWeight.bold),),
      ) ,
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.0),
        child: ListView(
            children: [
              CupertinoSearchTextField(
                prefixIcon: Icon(CupertinoIcons.search),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailPage(product: product),));
                },
                child: Row(
                  children: [
                    Container(
                        child: Image.network(
                          "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png",),
                    height: 35,
                    width: 35),
                    SizedBox(width: 20,),
                    Text('',style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png",),
                      height: 35,
                      width: 35),
                    SizedBox(width: 20,),
                    Text("Eyeshadow Palette with Mirror",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Powder Canister",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Red Lipstick",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/thumbnail.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Red Nail Polish",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/1.png",),
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(width: 20,),
                    Text("Calvin Klein CK One",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Coco Noir Eau De",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/fragrances/Dior%20J'adore/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Dior J'adore",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Dolce Shine Eau de",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Gucci Bloom Eau de",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Annibale Colombo Bed",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Annibale Colombo Sofa",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Bedside Table African Cherry",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Knoll Saarinen Executive Conference Chair",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Wooden Bathroom Sink With Mirror",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Apple/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Apple",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Beef Steak",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Cat Food",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Chicken Meat",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Cooking Oil",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Cucumber/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Cucumber",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Dog Food",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Eggs/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Eggs",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Fish Steak",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Green Bell Pepper",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Green Chili Pepper",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Honey Jar",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Ice Cream",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Juice/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Juice",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        "https://cdn.dummyjson.com/products/images/groceries/Kiwi/1.png",),
                      height: 35,
                      width: 35
                    ),
                    SizedBox(width: 20,),
                    Text("Kiwi",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
               ],
        ),
      ),
    );
  }
}

