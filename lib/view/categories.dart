
import 'package:expense_manager_app/view/menudrawerwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  TextEditingController urlController=TextEditingController();
  TextEditingController categoryController=TextEditingController();

  void openCategoryBottomSheet(){
    showModalBottomSheet(
      context: context,
       builder: (context){
        return SingleChildScrollView(
          child: SizedBox(
            //height:MediaQuery.of(context).size.height/(1.5),
            
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
              mainAxisSize: MainAxisSize.min,
          
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                   Center(
                     child: Container(
                      height:81,
                      width: 81,
                      decoration: const BoxDecoration(
                        color: const Color.fromRGBO(140, 128, 128, 0.2),
                        shape: BoxShape.circle,
                      ),
                      child: ClipRect(
                          child: Image.asset(
                            'assets/categoryimg.png', 
                            height: 60,
                            width: 60,
                          ),
                        ),
                     ),
                   ),
                   Center(
                     child: Text("Add",
                     style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize: 18,
                      color: const Color.fromRGBO(0, 0, 0, 1)
                     ),),
                   ),
                  const SizedBox(
                    height:35,
                  ),
                  Text(
                    "Image URL",
                    style:GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),

                  TextField(
                    controller: urlController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter URL",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height:18,
                  ),
          
                  Text(
                    "Category",
                    style:GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),
                  const SizedBox(
                    height:5,
                  ),
                  TextField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter category name",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(191,189,189,1)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height:18,
                  ), 
                  
                  Center(
                    child: Container(
                      height:45,
                      width:130,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.circular(70)
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        }, 
                        child:Center(
                          child: Text("Add",
                          style:GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                        )
                      ,
                      
                      
                      
                      
                        
                        
                                    
                    ),
                                ),
                  ),
              ],
                  ),
            ),
          ),
        );

       },
        );
       }

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
    return Scaffold(
      appBar: AppBar(
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
              "Categories ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
          ],

      ),

      ),
            drawer:const MenuDrawerWidget(),

      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Center(
          child: Text(
            "Delete Category",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
                  ),
                  content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                "Are you sure you want to delete the selected category?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your delete action here
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
                  ),
                );
              },
            );
          },
          
                child: Container(
                  padding: const EdgeInsets.all(15),
                  
                  height:160,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color with some opacity
                        spreadRadius:5,  // How much the shadow spreads
                        blurRadius: 5,    // Softness of the shadow
                        offset: const Offset(3, 3), // Changes position of shadow (x, y)
                      ),
                    ],
                  ),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                                    height: 90.0, 
                                    width: 90.0, 
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(214, 3, 3, 0.7),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRect(
                                      child: Image.asset(
                                        'assets/food.png', 
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                  ),
                      ),
                      
                      Text("${data[1]["category"]}",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1)
                      ),)
                    ],
                  ),
                  
                ),
              ),
              GestureDetector(
                onTap: (){
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Center(
          child: Text(
            "Delete Category",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
                  ),
                  content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                "Are you sure you want to delete the selected category?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your delete action here
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
                  ),
                );
              },
            );                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  
                  height:160,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color with some opacity
                        spreadRadius:5,  // How much the shadow spreads
                        blurRadius: 5,    // Softness of the shadow
                        offset: const Offset(3, 3), // Changes position of shadow (x, y)
                      ),
                    ],
                  ),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          height: 90.0, 
                          width: 90.0, 
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 148, 255, 0.7),
                            shape: BoxShape.circle,
                          ),
                          child: ClipRect(
                            child: Image.asset(
                              'assets/fuel.png', 
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                      ),
                      
                      Text("${data[3]["category"]}",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1)
                      ),)
                    ],
                  ),
                  
                ),
              ),
          
            ],),
            const SizedBox( height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                onTap: (){
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Center(
          child: Text(
            "Delete Category",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
                  ),
                  content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                "Are you sure you want to delete the selected category?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your delete action here
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
                  ),
                );
              },
            );                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  
                  height:160,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color with some opacity
                        spreadRadius:5,  // How much the shadow spreads
                        blurRadius: 5,    // Softness of the shadow
                        offset: const Offset(3, 3), // Changes position of shadow (x, y)
                      ),
                    ],
                  ),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          height: 90.0, 
                          width: 90.0, 
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 174, 91, 0.7),
                            shape: BoxShape.circle,
                          ),
                          child: ClipRect(
                            child: Image.asset(
                              'assets/medicine.png', 
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                      ),
                      
                      Text("${data[0]["category"]}",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1)
                      ),)
                    ],
                  ),
                  
                ),
              ),
              GestureDetector(
                onTap: (){
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Center(
          child: Text(
            "Delete Category",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
                  ),
                  content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                "Are you sure you want to delete the selected category?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your delete action here
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
                  ),
                );
              },
            );                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  
                  height:160,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color with some opacity
                        spreadRadius:5,  // How much the shadow spreads
                        blurRadius: 5,    // Softness of the shadow
                        offset: const Offset(3, 3), // Changes position of shadow (x, y)
                      ),
                    ],
                  ),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          height: 90.0, 
                          width: 90.0, 
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(241, 38, 197, 0.7),
                            shape: BoxShape.circle,
                          ),
                          child: ClipRect(
                            child: Image.asset(
                              'assets/shopping.png', 
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                      ),
                      
                      Text("${data[2]["category"]}",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromRGBO(33, 33, 33, 1)
                      ),)
                    ],
                  ),
                  
                ),
              ),
          
            ],),
            
          ],),
        ),
      ),floatingActionButton: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 54.0),
       child: FloatingActionButton.extended(
         onPressed: () {
          openCategoryBottomSheet();
         },
         backgroundColor: Colors.white, // Making the button background white
         elevation: 5,
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30), // Adjust radius for rounded corners
  ),
         label: Row(
           children: [
        // Circular green background for icon
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(14, 161, 125, 1), // Green background
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'assets/addicon.png', 
              height: 24, // Adjusted size
              width: 24,
            ),
          ),
        ),
        const SizedBox(width: 10), // Space between icon and text
        // Add Transaction Text
        Text(
          "Add Category",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: const Color.fromRGBO(37, 37, 37, 1),
          ),
       
        
       
           ),
           ],
         ),
       ),
     ),

    );
  }
}

