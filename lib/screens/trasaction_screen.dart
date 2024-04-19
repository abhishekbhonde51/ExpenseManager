import 'dart:ui';

import 'package:expensemanager/screens/menu_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TrasactionScreen());

class TrasactionScreen extends StatefulWidget {
  const TrasactionScreen({super.key});
  @override
  State createState() => _TrasactionScreenState();
}

class _TrasactionScreenState extends State {
  void MyBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "Date",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 316,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(191, 189, 189, 1),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Date",
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "Amount",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 316,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(191, 189, 189, 1),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Amount",
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "Category",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 316,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(191, 189, 189, 1),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Category",
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "Description",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 316,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(191, 189, 189, 1),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Description",
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ))),
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: const EdgeInsets.all(19),
                        height: 40,
                        width: 123,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(14, 161, 125, 1),
                          borderRadius: BorderRadius.all(Radius.circular(67)),
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        )))
              ],
            ),
          );
        });
  }

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
                          borderRadius: BorderRadius.all(Radius.circular(100))),
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
                                    color: const Color.fromRGBO(0, 0, 0, 0.8)),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
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
              ),
            ],
          ),
        ),
        floatingActionButton: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: MyBottomSheet,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 46,
                    width: 166,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(67)),
                      color: Color.fromRGBO(255, 255, 255, 0.247),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            // spreadRadius: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.25))
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(14, 161, 125, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Add Transaction",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color.fromRGBO(37, 37, 37, 1)),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
