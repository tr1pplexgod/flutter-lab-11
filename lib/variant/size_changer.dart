import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './size_state.dart';
import './slider_section.dart';
import './custom_container.dart';

class SizeChanger extends StatelessWidget {
  const SizeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SizeState>(context);
        return Column(
          children: [
            SliderSection(
              label: "Width",
              value: provider.width,
              onChanged: provider.setWidth,
            ),
            SliderSection(
              label: "Height",
              value: provider.height,
              onChanged: provider.setHeight,
            ),
            SliderSection(
              label: "Radius",
              value: provider.topright,
              onChanged: provider.setTopRight,
            ),
            const SizedBox(height: 20),
            const CustomContainer(),
          ],
        );
  }
}