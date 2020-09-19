import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:estructura_practica_1/utils/constants.dart';

class ItemGrainsDetails extends StatefulWidget {
  final ProductGrains grains;

  ItemGrainsDetails({Key key, this.grains}) : super(key: key);

  @override
  _ItemGrainsDetailsState createState() => _ItemGrainsDetailsState();
}

class _ItemGrainsDetailsState extends State<ItemGrainsDetails> {
  @override
  var x = Icons.favorite;
  Widget build(BuildContext context) {
    _liked() {
      if (widget.grains.liked == true) {
        return Colors.green;
      } else
        return Colors.white;
    }

    void addCart() {
      ProductItemCart x = new ProductItemCart(
        productTitle: widget.grains.productTitle,
        productAmount: widget.grains.productAmount,
        productPrice: widget.grains.productPrice,
        productImage: widget.grains.productImage,
        productliked: widget.grains.liked,
      );
    }
  }
}
