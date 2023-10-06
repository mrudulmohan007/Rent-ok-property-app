import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key, required this.searchController});
  final TextEditingController searchController;

  get searchTextController => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: TextField(
                controller: searchTextController,
                decoration: const InputDecoration(
                  hintText: "Search Tenants, Rooms...",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,


                ),
              ),
    );
  }
}
