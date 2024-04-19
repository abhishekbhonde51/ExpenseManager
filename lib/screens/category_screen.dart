import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
    );
  }
}
