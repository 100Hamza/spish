import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/overview/graphs/widgets/color_extensions.dart';

import '../../../../../../ui_config/front_end_config.dart';


class ActivieRightGrapgh extends StatefulWidget {
  ActivieRightGrapgh({super.key});
  final Color leftBarColor = FrontEndConfig.kFabColors;
  final Color rightBarColor = FrontEndConfig.kFabColors;
  final Color avgColor = FrontEndConfig.contentColorOrange.avg(FrontEndConfig.contentColorRed);
  @override
  State<StatefulWidget> createState() => ActivieRightGrapghState();
}

class ActivieRightGrapghState extends State<ActivieRightGrapgh> {
  final double width = 2;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 10, 10);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 10);
    final barGroup4 = makeGroupData(2, 18, 1);
    final barGroup5 = makeGroupData(2, 18, 19);
    final barGroup6 = makeGroupData(0, 10, 10);
    final barGroup7 = makeGroupData(1, 16, 12);
    final barGroup8 = makeGroupData(2, 18, 10);
    final barGroup9 = makeGroupData(2, 18, 1);
    final barGroup10 = makeGroupData(2, 18, 19);
    final barGroup11 = makeGroupData(0, 10, 14);
    final barGroup12 = makeGroupData(2, 18, 19);


    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9,
      barGroup10,
      barGroup11,
      barGroup12,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: BarChart(
              BarChartData(
                maxY: 20,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    tooltipBgColor: Colors.grey,
                    getTooltipItem: (a, b, c, d) => null,
                  ),
                  touchCallback: (FlTouchEvent event, response) {
                    if (response == null || response.spot == null) {
                      setState(() {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                      });
                      return;
                    }

                    touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                    setState(() {
                      if (!event.isInterestedForInteractions) {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                        return;
                      }
                      showingBarGroups = List.of(rawBarGroups);
                      if (touchedGroupIndex != -1) {
                        var sum = 0.0;
                        for (final rod
                        in showingBarGroups[touchedGroupIndex].barRods) {
                          sum += rod.toY;
                        }
                        final avg = sum /
                            showingBarGroups[touchedGroupIndex]
                                .barRods
                                .length;

                        showingBarGroups[touchedGroupIndex] =
                            showingBarGroups[touchedGroupIndex].copyWith(
                              barRods: showingBarGroups[touchedGroupIndex]
                                  .barRods
                                  .map((rod) {
                                return rod.copyWith(
                                    toY: avg, color: widget.avgColor);
                              }).toList(),
                            );
                      }
                    });
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 15,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 20,
                      interval: 1,
                      getTitlesWidget: leftTitles,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                barGroups: showingBarGroups,
                gridData: FlGridData(show: false),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: FrontEndConfig.kGrayTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 8,
    );
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 10) {
      text = '50';
    } else if (value == 19) {
      text = '100';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['J', 'F', 'M' , 'A' , 'M' , 'J' , 'J' , 'A' , 'S' , 'A' , 'N' , 'D'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(

        color: FrontEndConfig.kGrayTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 8,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 5,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: 4,
        ),
      ],
    );
  }

  Widget makeTransactionsIcon() {
    const width = 2.5;
    const space = 1.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 3,
          color: Colors.blueAccent.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.orange.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 22,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}