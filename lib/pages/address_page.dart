import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tasker/utilities.dart';

@RoutePage()
class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on_outlined),
        title: Text("Address"),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            TextFormField(),
            CategoriesList(),
            CategoriesList(),
            CategoriesList(),
            CategoriesList(),
            CategoriesList(),
          ],
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Summer Projects",
          style: TextStyle().copyWith(fontWeight: FontWeight.w600),
        ),
        HBox(10),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryTile(),
              CategoryTile(),
              CategoryTile(),
              CategoryTile(),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset('assets/images/coffee.jpg', fit: BoxFit.fill),
          ),
          SizedBox(height: 4),
          Text("Indoor painting"),
        ],
      ),
    );
  }
}
