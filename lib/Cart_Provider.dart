import 'package:flutter/material.dart';
import 'package:project1/Product_Model.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{
 final List<Product>cart=[];
 List<Product>get _cart=>cart;
 void toogleFavorite(Product product){

   if (_cart.contains(product)){
     for (Product element in _cart){
       element.quantity++;
     }
   }else {
     _cart.add(product);
   }
   notifyListeners();
 }

 incrementQtn(int index){
   _cart[index].quantity++;
   notifyListeners();
 }

 decrementQtn(int index){
   if(_cart[index].quantity<=1){
     return;
   }
   _cart[index].quantity--;
   notifyListeners();
 }
}