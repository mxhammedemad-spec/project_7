import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Second extends StatelessWidget {
  final String image;
  final String title;
  final String genies;
  final String synopsis;
  final String episode;
  const Second({super.key, required this.image, required this.title, required this.genies, required this.synopsis, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading:TextButton(onPressed:() {
        Navigator.pop(context);
      }, child:Icon(Icons.arrow_back_outlined,color: Colors.white,)),
      centerTitle: true,
      title: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      ),
      backgroundColor: Colors.black,
    ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(image),

            Row(
              children: [ SizedBox(width: 10.w),
                Text('',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            Row(
              children: [SizedBox(width: 10.w),
                Text(genies,
                  style: TextStyle(color: Color(0xFF959595),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.h),
             Row(
                children: [SizedBox(width: 10.w),

                     Expanded(
                       child: Text(synopsis,
                        style: TextStyle(color: Colors.white,
                        fontSize: 11.sp,
                         fontWeight: FontWeight.w400,
                        ),
                        maxLines:22,
                        overflow: TextOverflow.ellipsis,
                                           ),
                     ),



                ],
              ),

           SizedBox(height: 10.h),
           Row(
             children: [SizedBox(width: 15.w),
               Text("episode:${episode}",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 11.sp,
                 fontWeight: FontWeight.w400,

               ),
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}
