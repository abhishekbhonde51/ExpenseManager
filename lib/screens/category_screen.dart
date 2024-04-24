import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:google_fonts/google_fonts.dart";

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  void bottomSheet() {
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
                  height: 97,
                  width: 97,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(140, 128, 127, 0.2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      )),
                  child: const Icon(Icons.image),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Text("Add"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Image URL",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  height: 36,
                  width: 316,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Image URL"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(191, 189, 189, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(191, 189, 189, 1)))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Category Name",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  height: 36,
                  width: 316,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Enter Category Name"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(191, 189, 189, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(191, 189, 189, 1)))),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 40,
                  width: 123,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(67),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 2),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.2))
                      ]),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Add",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color.fromRGBO(33, 33, 33, 1))),
        leading: const Icon(Icons.menu),
      ),
      body: GridView.builder(
        itemCount: 4,
        padding: const EdgeInsets.all(17),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
                height: 150,
                width: 145,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 8,
                          color: Color.fromRGBO(0, 0, 0, 0.15))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 74,
                          width: 74,
                          child: Image.asset('Assets/category.png'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color.fromRGBO(33, 33, 33, 1)),
                        )
                      ],
                    )
                  ],
                )),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: bottomSheet,
            child: Container(
              height: 46,
              width: 166,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(67)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.25))
                  ]),
              child: GestureDetector(
                onTap: bottomSheet,
                child: Container(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Add Category"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
