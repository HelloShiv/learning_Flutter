import 'package:app_learning/models/catalog.dart';
import 'package:app_learning/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app_learning/pages/widgets/Item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(5, (index) => CatalogModel.items[0]);
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
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]
          );
        },
        ),
      )
     
      );
  }
}
