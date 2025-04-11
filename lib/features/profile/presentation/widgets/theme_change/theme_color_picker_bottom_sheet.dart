import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/profile/profile.dart';

class ThemeColorPickerBottomSheet extends StatelessWidget {
  const ThemeColorPickerBottomSheet({super.key});

  List<Color> get availableColors => [
        Colors.red,
        Colors.redAccent,
        Colors.deepOrange,
        Colors.deepOrangeAccent,
        Colors.orangeAccent,
        Colors.amber,
        Colors.amberAccent,
        Colors.yellowAccent,
        Colors.limeAccent,
        Colors.lightGreenAccent,
        Colors.greenAccent,
        Colors.tealAccent,
        Colors.cyanAccent,
        Colors.lightBlueAccent,
        Colors.lightBlue,
        Colors.blueAccent,
        Colors.indigoAccent,
        Colors.deepPurpleAccent,
        Colors.purpleAccent,
        Colors.pinkAccent,
      ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(16),
            Text(
              context.strings.selectThemeColor,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Gap(32),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: availableColors
                  .map((color) => ColorSquare(
                        color: color,
                        onColorSelected: () => context.read<ThemeCubit>().updateTheme(color),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
