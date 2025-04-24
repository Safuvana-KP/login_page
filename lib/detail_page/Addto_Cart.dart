import 'package:flutter/material.dart';
import 'package:project1/Cart_Provider.dart';
import 'package:provider/provider.dart';
import 'package:project1/Product_Model.dart';

class AddtoCart extends StatefulWidget{
  final Product product;
  const AddtoCart({super.key, required this.product, });

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {

  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    final provider= CartProvider();

    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue
          ),
          padding:  EdgeInsets.symmetric(horizontal: 15.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2,),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      if(currentIndex !=1){
                        setState(() {
                          currentIndex--;
                        });
                      }
                    },
                        icon: Icon(Icons.remove,color: Colors.white,)),
                    SizedBox(width: 3,),
                    Text(currentIndex.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(width:3,),
                    IconButton(
                        onPressed: (){
                          setState(() {
                            currentIndex++;
                          });
                        },
                        icon: Icon(Icons.add,color: Colors.white,)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  provider.toogleFavorite(widget.product);

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Successfully added',style: TextStyle(
                          fontWeight:FontWeight.bold,fontSize: 25,color: Colors.white
                      ),),
                        duration: Duration(seconds: 1),
                      ),
                  );
                },

                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:15 ),),
                ),
              )
            ],
          ),
        ),
      );
  }
}
