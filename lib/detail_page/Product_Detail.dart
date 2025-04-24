import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
      child: Column(
        children: [
          Text('', style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,

          ),),
          SizedBox(height: 10,),
          Text(
            "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects.Achieve dramatic lashes with this long-lasting and cruelty-free formula",
            style: TextStyle(fontSize: 11),),
          SizedBox(height: 15,),
          Row(
            children: [
              Text("\$9.9", style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
              SizedBox(width: 10,),
              Text("7.17% off",style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),),
            ],
          ),
          SizedBox(height: 13,),
          Row(
            children: [
              Icon(Icons.star,color: Colors.yellow[800],size: 20.0,),
              SizedBox(width: 0.5,),
              Text("4.94"),
              SizedBox(width: 15.0,),
              Icon(Icons.insert_invitation,color: Colors.blue,size: 20.0,),
              Text(''),
            ],
          ),
          SizedBox(height: 13,),
          Text("Brand: Essence",style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.start,),

        ],
      ),
    );
  }
}
