import 'package:expense_manager_app/view/menudrawerwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Maindata extends StatefulWidget {
  const Maindata({super.key});

  @override
  State<Maindata> createState() => _MaindataState();
}

class _MaindataState extends State<Maindata> {

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
              "November 2024 ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
            const SizedBox(width: 20),
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
      ),
      drawer: const MenuDrawerWidget(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circle with Image
                    Container(
                      height: 65.0, 
                      width: 65.0, 
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
                    const SizedBox(width: 15),
                    // Column with Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data[0]["category"]}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${data[0]["description"]}",
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
                        Image.asset(
                          "assets/Subtract.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${data[0]["amount"]}",
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
                Padding(
                  padding: const EdgeInsets.only(left: 253.0),
                  child: Row(
                    children: [
                      Text("${data[0]["date_time"]}",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circle with Image
                    Container(
                      height: 65.0, 
                      width: 65.0, 
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
                    const SizedBox(width: 15),
                    // Column with Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data[1]["category"]}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${data[1]["description"]}",
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
                        Image.asset(
                          "assets/Subtract.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${data[1]["amount"]}",
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
                Padding(
                  padding: const EdgeInsets.only(left: 253.0),
                  child: Row(
                    children: [
                      Text("${data[1]["date_time"]}",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circle with Image
                    Container(
                      height: 65.0, 
                      width: 65.0, 
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
                    const SizedBox(width: 15),
                    // Column with Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data[2]["category"]}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${data[2]["description"]}",
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
                        Image.asset(
                          "assets/Subtract.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${data[2]["amount"]}",
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
                Padding(
                  padding: const EdgeInsets.only(left: 253.0),
                  child: Row(
                    children: [
                      Text("${data[2]["date_time"]}",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circle with Image
                    Container(
                      height: 65.0, 
                      width: 65.0, 
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
                    const SizedBox(width: 15),
                    // Column with Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data[3]["category"]}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${data[3]["description"]}.",
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
                        Image.asset(
                          "assets/Subtract.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${data[3]["amount"]}",
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
                Padding(
                  padding: const EdgeInsets.only(left: 253.0),
                  child: Row(
                    children: [
                      Text("${data[3]["date_time"]}",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circle with Image
                    Container(
                      height: 65.0, 
                      width: 65.0, 
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(100, 62, 255, 0.7),
                        shape: BoxShape.circle,
                      ),
                      child: ClipRect(
                        child: Image.asset(
                          'assets/entertainment.png', 
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    // Column with Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data[4]["category"]}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${data[4]["description"]}",
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
                        Image.asset(
                          "assets/Subtract.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${data[4]["amount"]}",
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
                Padding(
                  padding: const EdgeInsets.only(left: 253.0),
                  child: Row(
                    children: [
                      Text("${data[4]["date_time"]}",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height:240,
          ),

        
          






          
        ],
      ),

     floatingActionButton: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 54.0),
       child: FloatingActionButton.extended(
         onPressed: () {
          openBottomSheet();
           // Action when button is pressed
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
            color: Color.fromRGBO(0, 174, 91, 0.7), // Green background
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
          "Add Transaction",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: const Color.fromRGBO(37, 37, 37, 1),
          ),
       
        
       
           ),
           ],
         ),
       ),
     ),
    );
    
  }
  TextEditingController dateController=TextEditingController();
  TextEditingController amountController=TextEditingController();
  TextEditingController categoryController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();




  void openBottomSheet(){
    showModalBottomSheet(
      context: context,
       builder: (context){
        return SingleChildScrollView(
          child: SizedBox(
            //height:MediaQuery.of(context).size.height/(1.5),
            
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              mainAxisSize: MainAxisSize.min,
          
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                   Text(
                    "Date",
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
                    controller: dateController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter date",
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
                    "Amount",
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
                    controller: amountController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter amount",
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
                      hintText: "Enter category",
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
                    "Description",
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
                    controller: descriptionController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter description",
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
                    height:30,
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
}
