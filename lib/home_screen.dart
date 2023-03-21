import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              Container(
                width: 156.0.w,
                height: 215.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.sp),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(children: [
                  Text(
                    'UMUR',
                    style: TextStyle(
                        fontSize: 18.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '20',
                    style: TextStyle(
                        fontSize: 64.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
