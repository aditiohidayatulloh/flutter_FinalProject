import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_button.dart';
import '../widget/result_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.imtResult,
    required this.resultText,
    // ignore: non_constant_identifier_names
    required this.interpretation,
  });

  final String imtResult;
  final String resultText;
  final String interpretation;

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
                    'Hasil Perhitungan',
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
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ResultText(
                            title: resultText,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          const Spacer(),
                          ResultText(
                            title: imtResult,
                            fontSize: 96,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          const Spacer(),
                          const ResultText(
                            title: 'KETERANGAN :',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ResultText(
                            title: interpretation,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0.sp,
                  ),
                  // Spacer(),
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
