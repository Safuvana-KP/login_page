import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/ItemPage.dart';
import 'package:project1/Product_Model.dart';
import 'detail_page/Detail_page.dart';


class HomePage extends StatefulWidget {

   HomePage( {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>>selectItems=[all];
    return Scaffold(
      appBar:AppBar(
        title: Text("Product List",style: TextStyle( fontSize: 17,fontWeight: FontWeight.bold),),
      ) ,
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.0),
        child:SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(20),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
                  const CupertinoSearchTextField(
                    prefixIcon: Icon(CupertinoIcons.search),
                  ),
                  const SizedBox(height: 10,),
                  ListView.builder(
                   padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: selectItems.length,
                      itemBuilder:(BuildContext context,index){
                        return Itempage(product: selectItems[selectedIndex][index],);
                      }
                  ),]),


                    ))

        ),

    );
  }
}

