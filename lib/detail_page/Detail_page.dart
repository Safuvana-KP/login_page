import 'package:flutter/material.dart';
import 'package:project1/Product_Model.dart';
import 'package:project1/detail_page/Addto_Cart.dart';
import 'package:project1/detail_page/Product_Detail.dart';

class DetailPage extends StatefulWidget {
final Product product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){},
            icon:const Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            width:double.infinity,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image:NetworkImage(widget.product.image) ,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ProductDetail(product: widget.product),
      ]
      ),
      floatingActionButton:AddtoCart(product: widget.product,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}