import 'package:expense_manager_app/view/Graphs.dart';
import 'package:expense_manager_app/view/categories.dart';
import 'package:expense_manager_app/view/maindata.dart';
import 'package:expense_manager_app/view/trash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDrawerWidget extends StatefulWidget {
  const MenuDrawerWidget({super.key});

  @override
  State<MenuDrawerWidget> createState() => _MenuDrawerWidgetState();
}

class _MenuDrawerWidgetState extends State<MenuDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), // Optional: rounded corners for aesthetics
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Darker shadow for more depth
              spreadRadius: 10,  // Increased spread radius for a larger shadow
              blurRadius: 20,    // Increased blur for a softer shadow
              offset: Offset(5, 5), // Shadow offset for a realistic bottom-right shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Expense Manager",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Saves all your Transactions",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const Maindata();
                    })
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.payment,
                      color: Color.fromARGB(255, 9, 150, 14),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Transaction",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const Graphs();
                    })
                  );
                },
                child: Row(
                  children: [
                    Image.asset("assets/graphs.png"),
                    const SizedBox(width: 16),
                    Text(
                      "Graphs",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const Categories();
                    })
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.category,
                      color: Color.fromARGB(255, 20, 128, 23),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const Trash();
                    })
                  );
                },
                child: Row(
                  children: [
                    Image.asset("assets/trash.png"),
                    const SizedBox(width: 16),
                    Text(
                      "Trash",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Image.asset("assets/profile.png"),
                    const SizedBox(width: 16),
                    Text(
                      "About us",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
