import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import "package:google_fonts/google_fonts.dart";

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Future showMyDialog() async {
    return await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          content: Container(
            height: 200,
            width: 300,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(14))), // Specify the desired width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Delete Category",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Are you sure you want to delete the selected category?",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(14, 161, 125, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "Delete",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(140, 128, 128, 0.2)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                  child: const Text("Add"),
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
                SizedBox(
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
                SizedBox(
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
            child: GestureDetector(
              onDoubleTap: () {
                showMyDialog();
              },
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
                          SizedBox(
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
            ),
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
                child: SizedBox(
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
