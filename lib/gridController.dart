import 'package:flutter/material.dart';
import 'gridItem.dart';
import 'gridData.dart';
import 'constants.dart';

class GridController {
  Widget createGridView(textColor) {
    return GridView.count(
        padding: EdgeInsets.fromLTRB(kGridViewLeftPadding, kGridViewTopPadding,
            kGridViewRightPadding, kGridViewBottomPadding),
        crossAxisCount: kGridViewNumberColumns,
        crossAxisSpacing: kGridViewHorizontalSpacing,
        mainAxisSpacing: kGridViewVerticalSpacing,
        children: _gridData
            .map((data) => GridItem(
                  imageFilename: data.imageFilename,
                  text: data.name,
                  value: data.value,
                  textColor: textColor,
                ))
            .toList());
  }

  /// This list holds the data to be populated in each grid
  /// @property name: Text shown below the grid
  /// @property imageFilename: path/filename of the image file
  List<GridData> _gridData = [
    GridData(
      name: 'Diamond',
      imageFilename: 'images/diamond.png',
      value: 'diamond',
    ),
    GridData(
      name: 'Ruby',
      imageFilename: 'images/ruby.png',
      value: 'ruby',
    ),
    GridData(
      name: 'Amethyst',
      imageFilename: 'images/amethyst.png',
      value: 'amethyst',
    ),
    GridData(
      name: 'Citrine',
      imageFilename: 'images/citrine.png',
      value: 'citrine',
    ),
    GridData(
      name: 'Emerald',
      imageFilename: 'images/emerald.png',
      value: 'emerald',
    ),
    GridData(
      name: 'Sapphire',
      imageFilename: 'images/sapphire.png',
      value: 'sapphire',
    ),
    GridData(
      name: 'Spinel',
      imageFilename: 'images/spinel.png',
      value: 'spinel',
    ),
    GridData(
      name: 'Apatite',
      imageFilename: 'images/apatite.png',
      value: 'apatite',
    ),
    GridData(
      name: 'Aquamarine',
      imageFilename: 'images/aquamarine.png',
      value: 'aquamarine',
    ),
  ];
}
