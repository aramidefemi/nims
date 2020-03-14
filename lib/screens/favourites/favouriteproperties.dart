import 'package:flutter/material.dart';
import 'package:nims/containers/products/model/products.dart';
import 'package:nims/containers/products/product_grid_item.dart';

class FavouriteProperties extends StatelessWidget {
  FavouriteProperties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
          ),
          Expanded(
            child: TabBarView(
              children: [
                productGrid("KAFTAN"),
                productGrid("BABARIGA"),
                productGrid("OFFICE PANT"),
                productGrid("DANSHIKI"),
                productGrid("SHOKOTO"),
              ],
            ),
          ),
        ],
      ),
    );
  }

// productGridItem
  Widget productGrid(which) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      children: new List<Widget>.generate(products[which].length, (index) {
        return productGridItem(products[which][index]);
      }),
    );
  }

  Widget tabButtons({String name}) {
    return Tab(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "$name",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 8.5,
            ),
          ),
        ),
      ),
    );
  }
}
