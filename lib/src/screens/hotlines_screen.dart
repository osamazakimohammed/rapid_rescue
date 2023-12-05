import 'package:flutter/material.dart';
import 'package:rapid_rescue/src/widgets/custom_button.dart';

class HotlinesScreen extends StatelessWidget {
  const HotlinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: 14,
          children: [
            Wrap(
              spacing: 14,
              children: [
                Button(
                    onPressed: () {},
                    title: "Health",
                    icon: Icons.local_hospital_outlined),
                Button(
                    onPressed: () {},
                    title: "Water",
                    icon: Icons.water_drop_outlined),
                Button(
                    onPressed: () {},
                    title: "Electricity",
                    icon: Icons.electric_bolt_outlined),
              ],
            ),
            Wrap(
              spacing: 14,
              children: [
                Button(
                    onPressed: () {},
                    title: "Fire",
                    icon: Icons.fire_truck_outlined),
                Button(
                    onPressed: () {},
                    title: "Police",
                    icon: Icons.local_police_outlined),
                Button(
                    onPressed: () {},
                    title: "Gas",
                    icon: Icons.gas_meter_outlined),
              ],
            ),
            Wrap(
              spacing: 14,
              children: [
                Button(
                    onPressed: () {},
                    title: "Traffic",
                    icon: Icons.traffic_outlined),
                Button(
                    onPressed: () {},
                    title: "Network",
                    icon: Icons.signal_cellular_alt_outlined),
                Button(
                    onPressed: () {},
                    title: "More",
                    icon: Icons.more_horiz_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
