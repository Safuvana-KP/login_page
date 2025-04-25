import 'package:flutter/material.dart';
import 'package:project1/Product_Model.dart';

import 'detail_page/Detail_page.dart';

class Itempage extends StatefulWidget {
  final Product product;
  const Itempage({super.key, required this.product});

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailPage(product:widget.product),));
      },
      child: Row(
        children: [
          Container(
              child: Image.network(widget.product.image),
              height: 35,
              width: 35),
          SizedBox(width: 20,),
          Text(widget.product.title,style: TextStyle(fontSize: 12),),
        ],
      ),
    );
  }
}
