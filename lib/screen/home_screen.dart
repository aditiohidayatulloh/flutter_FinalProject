import 'package:final_project/imt_calculate.dart';
import 'package:final_project/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_button.dart';
import '../widget/imt_button.dart';
import '../widget/imt_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 20;
  int weight = 62;
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        backgroundColor: const Color.fromRGBO(191, 231, 249, 1),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Kalkulator IMT'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_sharp),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 24.0.sp),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Periksa Indeks Massa Tubuhmu Untuk Menjaga Kebugaran Tubuhmu',
                style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(4, 116, 237, 1)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IMTCard(
                    width: 156,
                    height: 200,
                    title: 'UMUR',
                    value: age.toString(),
                    label: 'thn',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IMTButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        IMTButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  IMTCard(
                    width: 156,
                    height: 200,
                    title: 'BERAT BADAN',
                    value: weight.toString(),
                    label: 'kg',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IMTButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        IMTButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.0.h,
              ),
              IMTCard(
                width: double.infinity,
                height: 200,
                title: 'TINNGI BADAN',
                value: height.toString(),
                label: 'cm',
                child: Slider(
                  min: 100.0,
                  max: 250.0,
                  value: height.toDouble(),
                  activeColor: Colors.white,
                  inactiveColor: const Color.fromRGBO(191, 231, 249, 1),
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 40.0.h,
              ),
              Text(
                'Tekan tombol di bawah untuk menghitung hasil Indeks Massa Tubuh',
                style: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(4, 116, 237, 1),
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomButton(
                title: 'HITUNG',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        IMTCalculator imtCalculator = IMTCalculator(
                          height: height,
                          weight: weight,
                        );
                        return ResultScreen(
                            imtResult: imtCalculator.calculateIMT(),
                            resultText: imtCalculator.getResult(),
                            interpretation: imtCalculator.getInterpretation());
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
