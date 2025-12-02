import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProudctCard extends StatelessWidget {
  const CustomProudctCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 130.h,
          width: 220.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 16.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hand bag lv',
                    style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$225'),

                      Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          right: 32,
          bottom: 80,
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC79E8a3PoLN7JAT4oH5F4CRkuw8CT-AOuXw&s',
            height: 100,
          ),
        ),
      ],
    );
  }
}
