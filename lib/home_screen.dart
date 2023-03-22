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
              SizedBox(height: 23.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IMTCard(
                    title: 'UMUR',
                    value: '20',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        IMTButton(icon: Icons.remove),
                        IMTButton(icon: Icons.add),
                      ],
                    ),
                  ),
                  IMTCard(
                    title: 'BERAT BADAN',
                    value: '62',
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
            ],
          ),
        ),
      ),
    );
  }
}
