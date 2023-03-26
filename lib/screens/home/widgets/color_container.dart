part of '../home_screen.dart';

class ColorContainer extends StatelessWidget {
  final Color color;

  const ColorContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: color,
        ),
      ),
    );
  }
}
