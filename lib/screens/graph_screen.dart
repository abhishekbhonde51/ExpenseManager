import 'dart:ui';

import 'package:expensemanager/screens/menu_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:plant_icons/plant_icons.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "food": 20,
    "Fuel": 34,
    "movies": 30,
    "Entertainment": 34,
    "Shopping": 10
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graph",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      drawer: const MenuDrawer(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 177.02,
                  width: 314,
                  child: PieChart(
                      dataMap: data,
                      chartType: ChartType.ring,
                      animationDuration: const Duration(milliseconds: 2000),
                      chartRadius: 200,
                      ringStrokeWidth: 30,
                      centerText: "Total",
                      centerTextStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black),
                      chartValuesOptions:
                          const ChartValuesOptions(showChartValues: false)))
            ],
          ),
          Divider(),
          const SizedBox(
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 320,
              width: 284,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclipse.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclipse.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclipse.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclipse.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclipse.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
