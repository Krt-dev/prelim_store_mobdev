import 'package:flutter/material.dart';
import '../Model/places_model.dart';


class CartProvider extends ChangeNotifier{

  final List<Places>_items = [];

  List<Places> get items => _items;

  void add(Places item){
    _items.add(item);
    notifyListeners();
  }

  void remove(Places item){
    _items.remove(item);
    notifyListeners();
  }

  void removeAll(){
    _items.clear();
    notifyListeners();
  }

  double getCartTotal(){
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }

  
}