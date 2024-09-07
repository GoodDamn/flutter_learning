import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget{
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      color: const Color.fromRGBO(200, 0, 125, 1),
      child: const Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      )
    );
  }
}