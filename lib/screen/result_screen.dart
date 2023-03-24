import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_button.dart';
import '../widget/result_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(191, 231, 249, 1),
            appBar: AppBar(
              title: const Text('KALKULATOR IMT'),
              centerTitle: true,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HASIL PERHITUNGAN',
                    style: TextStyle(
                        fontSize: 30.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 28.0.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 481.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20.sp)),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ResultText(
                            title: 'NORMAL',
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ResultText(
                            title: '19.5',
                            fontSize: 96,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ResultText(
                            title: 'KETERANGAN',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ResultText(
                            title:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac purus scelerisque, rhoncus enim nec, aliquam sapien. Etiam venenatis volutpat odio, a rutrum erat iaculis sit amet. Aenean iaculis lobortis nisi, non congue ligula tincidunt a. Ut iaculis mauris eros, ut laoreet dolor scelerisque ac. In quis orci ut justo semper pretium mattis sed sem. Nullam maximus vel erat id consectetur. ',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0.sp,
                  ),
                  CustomButton(
                    title: 'KEMBALI',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )));
  }
}
