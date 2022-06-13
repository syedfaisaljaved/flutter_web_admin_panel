import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_ui/util/color_utils.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<PieChartSectionData> charData = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFFFF5926),
        value: 20,
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        color: const Color(0xFF2663FF),
        value: 10,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        color: const Color(0xFF9BEE27),
        value: 15,
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: charData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Text(
                  "100.2",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: colorWhite,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                const Text("of 256GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
