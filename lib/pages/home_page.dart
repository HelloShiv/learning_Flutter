import 'package:app_learning/models/catalog.dart';
import 'package:app_learning/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';

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
      ListView.builder(
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        return ItemWidget();
      },
      )
     
      );
  }
}
