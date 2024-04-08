
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:montra_expense_mobile/core_visual/colors.dart';

class ColorsPanel extends StatelessWidget {

  const ColorsPanel({super.key});

  static List<ColorPanelRowProps> _colorPanelList = [
    ColorPanelRowProps(
        title: "Dark",
        colorTitles: ["dark25", "dark50", "dark75", "dark100"],
      textColorOfTitles: "light100"
    ),

    ColorPanelRowProps(
        title: "Light",
        colorTitles: ["light20", "light40", "light60", "light80", "light100"],
        textColorOfTitles: "dark100"
    ),

    ColorPanelRowProps(
        title: "Violet",
        colorTitles: ["violet20", "violet40", "violet60", "violet80", "violet100"],
        textColorOfTitles: "light100"
    ),

    ColorPanelRowProps(
        title: "Red",
        colorTitles: ["red20", "red40", "red60", "red80", "red100"],
        textColorOfTitles: "light100"
    ),

    ColorPanelRowProps(
        title: "Green",
        colorTitles: ["green20", "green40", "green60", "green80", "green100"],
        textColorOfTitles: "light100"
    ),

    ColorPanelRowProps(
        title: "Yellow",
        colorTitles: ["yellow20", "yellow40", "yellow60", "yellow80", "yellow100"],
        textColorOfTitles: "light100"
    ),

    ColorPanelRowProps(
        title: "Blue",
        colorTitles: ["blue20", "blue40", "blue60", "blue80", "blue100"],
        textColorOfTitles: "light100"
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft
                child: Text(
                  'Colors',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: _colorPanelList.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: ColorPanelRow(props: entry,),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ));
  }
}

class ColorPanelRowProps {
  final String title;
  final List<String> colorTitles;
  final String textColorOfTitles;

  const ColorPanelRowProps({required this.title, required this.colorTitles, required this.textColorOfTitles});

}

class ColorPanelRow extends StatelessWidget {
  final ColorPanelRowProps props;

  const ColorPanelRow(
      {super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Container(
            child: Text(
              props.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )),*/
        SizedBox(width: 20),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: props.colorTitles.asMap().entries.map((entry) {
                  final index = entry.key;
                  final title = entry.value;
                  final color = AppColors.colorMap[title];
                  final isLastItem = index == props.colorTitles.length - 1;

                  return ColorPanelRowItem(isLastItem: isLastItem, textColor: props.textColorOfTitles, itemColor: title);
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ColorPanelRowItem extends StatelessWidget{
  const ColorPanelRowItem({super.key, required this.isLastItem, required this.textColor, required this.itemColor});
  final bool isLastItem;
  final String itemColor;
  final String textColor;
  static const double _boxSquare = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isLastItem ? 300 : _boxSquare,
      height: _boxSquare,
      color: AppColors.colorMap[itemColor],
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            itemColor,
            style: TextStyle(color: AppColors.colorMap[textColor]),
          ),
        ),
      ),
    );
  }

}