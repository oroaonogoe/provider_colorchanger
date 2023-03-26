part of '../home_screen.dart';

class AppBarContainer extends StatelessWidget {
  final Color colors;
  const AppBarContainer({
    super.key,
    required this.width,
    required this.height,
    required this.colors,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: colors,
    );
  }
}
