import 'package:expensemanager/screens/menu_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TrasactionScreen());

class TrasactionScreen extends StatefulWidget {
  const TrasactionScreen({super.key});

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
                          child: Image.asset(''),
                        ),
                        Column(
                          children: [
                            Text(
                              "Medicine",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the ",
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.8)),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
