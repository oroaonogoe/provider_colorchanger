import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_colorchanger/models/color_changer.dart';
import 'package:provider_colorchanger/screens/home/widgets/colors.dart';

part './widgets/appbar_container.dart';
part './widgets/color_button.dart';
part './widgets/color_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final colorVal = context.watch<ColorChanger>().color;
    final ColorName? colorName = context.watch<ColorChanger>().color;
    final colors = ColorsB();
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 50),
        child: Row(
          children: [
            if (colorName == ColorName.blue) // if (colorVal == 'Blue')
              AppBarContainer(
                  width: width, height: height, colors: colors.blue),
            if (colorName == ColorName.pink) // if (colorVal == 'Pink')
              AppBarContainer(
                  width: width, height: height, colors: colors.pink),
            if (colorName == ColorName.lime) // if (colorVal == 'Lime')
              AppBarContainer(
                  width: width, height: height, colors: colors.lime),
            if (colorName == ColorName.purple) // if (colorVal == 'Purple')
              AppBarContainer(
                  width: width, height: height, colors: colors.purple),
            if (colorName == ColorName.orange) // if (colorVal == 'Orange')
              AppBarContainer(
                  width: width, height: height, colors: colors.orange),
            if (colorName == ColorName.yellow) // if (colorVal == 'Yellow')
              AppBarContainer(
                  width: width, height: height, colors: colors.yellow),
            if (colorName == ColorName.red) // if (colorVal == 'Red')
              AppBarContainer(width: width, height: height, colors: colors.red),
            if (colorName == ColorName.green) // if (colorVal == 'Green')
              AppBarContainer(
                  width: width, height: height, colors: colors.green),
            if (colorName == ColorName.black) // if (colorVal == 'Black')
              AppBarContainer(
                  width: width, height: height, colors: colors.black),
          ],
        ),
      ),
      body: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// containers
                if (colorName == ColorName.blue)
                  ColorContainer(color: colors.blue), //if (colorVal == 'Blue')
                if (colorName == ColorName.red)
                  ColorContainer(color: colors.red), //if (colorVal == 'Red')
                if (colorName == ColorName.green)
                  ColorContainer(
                      color: colors.green), //if (colorVal == 'Green')
                if (colorName == ColorName.pink)
                  ColorContainer(color: colors.pink), //if (colorVal == 'Pink')
                if (colorName == ColorName.yellow)
                  ColorContainer(
                      color: colors.yellow), //if (colorVal == 'Yellow')
                if (colorName == ColorName.black)
                  ColorContainer(
                      color: colors.black), //if (colorVal == 'Black')
                if (colorName == ColorName.purple)
                  ColorContainer(
                      color: colors.purple), //if (colorVal == 'Purple')
                if (colorName == ColorName.lime)
                  ColorContainer(color: colors.lime), //if (colorVal == 'Lime')
                if (colorName == ColorName.orange)
                  ColorContainer(
                      color: colors.orange), //if (colorVal == 'Orange')

                /// buttons
                ColorButton(
                  colorText: 'blue',
                  colorName: colors.blue,
                  color: ColorName.blue,
                ),
                ColorButton(
                  colorText: 'red',
                  colorName: colors.red,
                  color: ColorName.red,
                ),
                ColorButton(
                  colorText: 'green',
                  colorName: colors.green,
                  color: ColorName.green,
                ),
                ColorButton(
                  colorText: 'pink',
                  colorName: colors.pink,
                  color: ColorName.pink,
                ),
                ColorButton(
                  colorText: 'yellow',
                  colorName: colors.yellow,
                  color: ColorName.yellow,
                ),
                ColorButton(
                  colorText: 'black',
                  colorName: colors.black,
                  color: ColorName.black,
                ),
                ColorButton(
                  colorText: 'purple',
                  colorName: colors.purple,
                  color: ColorName.purple,
                ),
                ColorButton(
                  colorText: 'lime',
                  colorName: colors.lime,
                  color: ColorName.lime,
                ),
                ColorButton(
                  colorText: 'orange',
                  colorName: colors.orange,
                  color: ColorName.orange,
                ),
                // ColorButton(color: ColorName.blue, colorName: colors.blue),
                // ColorButton(color: ColorName.red, colorName: colors.red),
                // ColorButton(color: ColorName.green, colorName: colors.green),
                // ColorButton(color: ColorName.pink, colorName: colors.pink),
                // ColorButton(color: ColorName.yellow, colorName: colors.yellow),
                // ColorButton(color: ColorName.black, colorName: colors.black),
                // ColorButton(color: ColorName.purple, colorName: colors.purple),
                // ColorButton(color: ColorName.lime, colorName: colors.lime),
                // ColorButton(color: ColorName.orange, colorName: colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
