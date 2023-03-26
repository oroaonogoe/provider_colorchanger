part of '../home_screen.dart';

class ColorButton extends StatelessWidget {
  final ColorName? color;
  final String colorText;
  final Color colorName;
  const ColorButton({
    super.key,
    required this.color,
    required this.colorText,
    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.read<ColorChanger>().changeColor(color);
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2, color: colorName),
      ),
      child: Text(
        // context.read<ColorChanger>().colorString,
        colorText,
        style: TextStyle(color: colorName),
      ),
    );
  }
}
