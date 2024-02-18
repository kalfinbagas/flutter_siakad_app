// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login/login_bloc.dart';
import '../../common/constants/colors.dart';
import '../../common/constants/images.dart';
import '../../common/widgets/buttons.dart';
import 'widgets/login_bottom_sheet.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.logo,
              width: 115.0,
            ),
            const SizedBox(height: 8.0),
            const Text(
              "SIAKAD",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: ColorName.primary,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "University Administration Management",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ColorName.grey,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8.0),
            Button.outlined(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  useSafeArea: true,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return BlocProvider(
                      create: (context) => LoginBloc(),
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: const LoginBottomSheet(),
                      ),
                    );
                  },
                );
              },
              label: 'Collage Student',
            ),
            const SizedBox(height: 8.0),
            Button.filled(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BlocProvider(
                        create: (context) => LoginBloc(),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const LoginBottomSheet(),
                        ),
                      );
                    });
              },
              label: 'CIVITAS AKADEMIK',
            ),
            const SizedBox(height: 32.0),
            const Text.rich(
              TextSpan(
                text: "Dengan memilih salah satu, Anda menyetujuinya ",
                children: [
                  TextSpan(
                    text: 'Ketentuan Layanan & Kebijakan Privasi',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorName.primary,
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                fontSize: 12,
                color: ColorName.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}