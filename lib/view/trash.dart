

import 'package:expense_manager_app/view/menudrawerwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {

  List<Map<String , String>> data=[
    { 
       "category":"Medicine",
       "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
       "amount":"500",
       "date_time":"3 June|11:50 AM"
     },
     { 
       "category":"Food",
       "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
       "amount":"650",
       "date_time":"3 June|11:50 AM"
     },
     { 
       "category":"Shopping",
       "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
       "amount":"325",
       "date_time":"3 June|11:50 AM"
     },
     { 
       "category":"Fuel",
       "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
       "amount":"600",
       "date_time":"3 June|11:50 AM"
     },
     { 
       "category":"Entertainment",
       "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
       "amount":"475",
       "date_time":"3 June|11:50 AM"
     }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        title: Row(
          children: [
            Text(
              "Trash ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
          ],

      ),
      ),
      drawer: const MenuDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Circle with Image
                        Container(
                          height: 25.0, 
                          width: 25.0, 
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(204, 210, 227, 1),
                            shape: BoxShape.circle,
                          ),
                          child: const ClipRect(
                            child: Icon(Icons.remove,color: Colors.white)
                          ),
                        ),
                        const SizedBox(width: 15),
                        // Column with Text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${data[index]["category"]}",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${data[index]["description"]}",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Subtract Icon and Text
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            
                            Text(
                              "${data[index]["amount"]}",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            );
          }),
      ),
    );
  }
}