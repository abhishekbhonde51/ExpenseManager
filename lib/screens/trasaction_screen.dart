import 'dart:ui';

import 'package:expensemanager/screens/menu_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TrasactionScreen());

class TrasactionScreen extends StatefulWidget {
  const TrasactionScreen({super.key});
  @override
  State createState() => _TrasactionScreenState();
}

class _TrasactionScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("June 2022",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color.fromRGBO(33, 33, 33, 1),
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            height: 24,
            width: 24,
            child: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const MenuDrawer(),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          // child: Image.asset(''),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Medicine",
                                    // textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the ",
                                    // textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                    child: const Icon(
                                      Icons.delete,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "500",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("3 June | 11.50 AM",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(0, 0, 0, 0.6))),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
