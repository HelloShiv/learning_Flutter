import 'package:app_learning/models/catalog.dart';
import 'package:app_learning/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app_learning/pages/widgets/Item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Something"),
      ),
      drawer: MyDrawer(),
      body:  
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]
          );
        },
        ),
      )
     
      );
  }
}
