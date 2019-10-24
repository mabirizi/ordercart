import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),

      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total', style: TextStyle(fontSize: 20),),
                  SizedBox(width: 10,),
                  Spacer(),
                  Chip(label: Text('${cart.totalAmount}/='),backgroundColor: Colors.yellowAccent,),
                  FlatButton( child: Text('OrderNow', style: TextStyle(color: Colors.deepOrange),), onPressed: () {},)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}