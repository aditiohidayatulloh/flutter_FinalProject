import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'imt_button.dart';
import 'imt_card.dart';

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
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IMTCard(
                    width: 156,
                    height: 215,
                    title: 'UMUR',
                    value: age.toString(),
                    label: 'thn',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        IMTButton(icon: Icons.remove),
                        IMTButton(icon: Icons.add),
                      ],
                    ),
                  ),
                  IMTCard(
                    width: 156,
                    height: 215,
                    title: 'BERAT BADAN',
                    value: weight.toString(),
                    label: 'kg',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        IMTButton(icon: Icons.remove),
                        IMTButton(icon: Icons.add),
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
                height: 215,
                title: 'TINNGI BADAN',
                value: height.toString(),
                label: 'cm',
                child: Slider(
                  min: 100.0,
                  max: 250.0,
                  value: height.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
