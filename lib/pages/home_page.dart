import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tasker/router/app_router.gr.dart';
import 'package:tasker/utilities.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on_outlined),
        title: Text("New York City"),
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
    return InkWell(
      onTap: () {
        // context.router.push(AddressRoute());
      },
      child: Container(
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
      ),
    );
  }
}
