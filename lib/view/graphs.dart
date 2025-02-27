

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_manager_app/view/menudrawerwidget.dart';

class Graphs extends StatefulWidget {
  const Graphs({super.key});

  @override
  State<Graphs> createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {

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
              "Graphs ",
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
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomPaint(
                    size: const Size(200, 200), // Set the size of the CustomPaint area
                    painter: SegmentedCirclePainter(),
                  ),
                  const SizedBox(
                        width:25,
                      ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration:const BoxDecoration(
                          color: Color.fromRGBO(214, 3, 3, 0.7),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width:10,
                      ),
                      Text("Food",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      )),
                    ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
          
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration:const BoxDecoration(
                              color: Color.fromRGBO(0, 148, 255, 0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                        
                      
                      const SizedBox(
                        width:10,
                      ),
                      Text("Fuel",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      )),
                       ],
                      ),
                      const SizedBox(
                      height: 10,
                    ),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration:const BoxDecoration(
                              color: Color.fromRGBO(0, 174, 91, 0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                        
                  
                      const SizedBox(
                        width:10,
                      ),
                      Text("Medicine",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      )),
                       ],
                      ),
                      const SizedBox(
                      height: 10,
                    ),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration:const BoxDecoration(
                              color: Color.fromRGBO(100, 62, 255, 0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                       
                      const SizedBox(
                        width:10,
                      ),
                      Text("Entertainment",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      )),
                       ],
                      ),
                      const SizedBox(
                      height: 10,
                    ),
                    Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration:const BoxDecoration(
                              color: Color.fromRGBO(241, 38, 197, 0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                       
                      const SizedBox(
                        width:10,
                      ),
                      Text("Shopping",
                      style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      )),
                       ],
                      ),
                    ],)
                  ],),
          
                  const SizedBox(
                    height:35,
                  ),
          
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                        height: 60.0, 
                        width: 60.0, 
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
                      const SizedBox(width:8,),
                      Text("${data[1]["category"]}",
                       style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize: 18,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                       ),
                      )
                            
                          ],),
                          //Spacer()
                         Row(children: [
                          const Icon(Icons.currency_rupee_outlined, size:17),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("${data[1]["amount"]}",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),
                          const SizedBox(
                            width:10,
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          size: 15,)
          
          
                         ],),
          
                        ],
                      ),
                      const SizedBox(
                        height:15,
                      ),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                        height: 60.0, 
                        width: 60.0, 
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
                      const SizedBox(width:8,),
                      Text("${data[3]["category"]}",
                       style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize: 18,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                       ),
                      )
                            
                          ],),
                          //Spacer()
                         Row(children: [
                          const Icon(Icons.currency_rupee_outlined, size:17),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("${data[3]["amount"]}",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),
                          const SizedBox(
                            width:10,
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          size: 15,)
          
          
                         ],),
          
                        ],
                      ),
                      const SizedBox(
                        height:15,
                      ),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                        height: 60.0, 
                        width: 60.0, 
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
                      const SizedBox(width:8,),
                      Text("${data[0]["category"]}",
                       style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize: 18,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                       ),
                      )
                            
                          ],),
                          //Spacer()
                         Row(children: [
                          const Icon(Icons.currency_rupee_outlined, size:17),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("${data[0]["amount"]}",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),
                          const SizedBox(
                            width:10,
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          size: 15,)
          
          
                         ],),
          
                        ],
                      ),
                      const SizedBox(
                        height:15,
                      ),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                        height: 60.0, 
                        width: 60.0, 
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
                      const SizedBox(width:8,),
                      Text("${data[4]["category"]}",
                       style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize: 18,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                       ),
                      )
                            
                          ],),
                          //Spacer()
                         Row(children: [
                          const Icon(Icons.currency_rupee_outlined, size:17),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("${data[4]["amount"]}",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),
                          const SizedBox(
                            width:10,
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          size: 15,)
          
          
                         ],),
          
                        ],
                      ),
                      const SizedBox(
                        height:15,
                      ),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                        height: 60.0, 
                        width: 60.0, 
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
                      const SizedBox(width:8,),
                      Text("${data[2]["category"]}",
                       style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize: 18,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                       ),
                      )
                            
                          ],),
                          //Spacer()
                         Row(children: [
                          const Icon(Icons.currency_rupee_outlined, size:17),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("${data[2]["amount"]}",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),
                          const SizedBox(
                            width:10,
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          size: 15,)
          
          
                         ],),
          
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                        color: Color.fromARGB(255, 179, 177, 177), // Line color
                        thickness: 1,       // Line thickness
                        height: 5,         // Space around the line
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Total",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color:const Color.fromRGBO(0, 0, 0, 1)
                    )),

                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined, size:17),
                      
                          const SizedBox(
                            width: 5,
                          ),
                          Text("2550.00",
                          style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          )),

                          ],
                    ),
                  ],)
                  
                ],
              ),
        ),
      ),
    );
        
      
    
  }
}

class SegmentedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);
    double innerRadius = 70.0; // Inner white circle radius
    double outerRadius = 100.0; // Outer segmented circle radius
    double strokeWidth = outerRadius - innerRadius;

    // Paint for the inner white circle
    Paint innerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // Draw the inner white circle
    canvas.drawCircle(center, innerRadius, innerPaint);

    // Paint for the outer circle segments
    Paint segmentPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.butt;

    List<Color> segmentColors = [
      Colors.blue,
      Colors.green,
      Colors.indigo,
      Color.fromARGB(255, 236, 126, 163),
      Colors.red,
    ];

    double startAngle = 0;
    double sweepAngle = (2 * 3.14) / segmentColors.length; // Equal division of the outer ring

    for (Color color in segmentColors) {
      segmentPaint.color = color;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: (innerRadius + outerRadius) / 2),
        startAngle,
        sweepAngle,
        false,
        segmentPaint,
      );
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
