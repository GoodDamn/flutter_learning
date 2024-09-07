import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/search/ui/theme/extension.dart';

class SearchHeader extends StatelessWidget{
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      color: context.searchHeaderColors.background,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              color: context.searchHeaderColors.icons,
              Icons.menu
            ),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          IconButton(
            icon: Icon(
                color: context.searchHeaderColors.icons,
                Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      )
    );
  }
}