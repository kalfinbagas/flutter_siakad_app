// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/widgets/custom_scaffold.dart';
import 'package:flutter_siakad_app/common/widgets/row_text.dart';
import 'package:flutter_siakad_app/pages/auth/auth_page.dart';

import '../../common/constants/icons.dart';
import '../../common/widgets/buttons.dart';

class ProfilePage extends StatefulWidget {
  final String role;
  const ProfilePage({Key? key, required this.role}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 60.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorName.black.withOpacity(0.15),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: ColorName.white,
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 4.0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/86760581?v=4',
                        width: 90.0,
                        height: 72.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 11.0, vertical: 2.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                            border: Border.all(color: ColorName.primary),
                          ),
                          child: Text(
                            widget.role,
                            style: const TextStyle(
                                color: ColorName.primary,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Text(
                          "Rizkalfin Bagas A",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: ColorName.primary,
                          ),
                        ),
                        const Text(
                          "Senin, 14 Januari 2024",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Dash(
                  length: MediaQuery.of(context).size.width - 60.0,
                  dashColor: const Color(0xffD5DFE7),
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: ColorName.white,
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.25),
                  offset: const Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 4.0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowText(
                  icon: const ImageIcon(
                    IconName.profile,
                  ),
                  label: 'Edit Profile',
                  value: '',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
                const SizedBox(height: 12.0),
                RowText(
                  icon: const Icon(Icons.notifications),
                  label: 'Notifikasi',
                  value: 'ON',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 12.0,
                ),
                RowText(
                  icon: const Icon(Icons.translate),
                  label: 'Bahasa',
                  value: 'Indonesia',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: ColorName.white,
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.25),
                  offset: const Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 4.0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowText(
                  icon: const ImageIcon(IconName.projector2Line),
                  label: 'Keamanan',
                  value: '',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
                const SizedBox(height: 12.0),
                RowText(
                  icon: const ImageIcon(IconName.mentalHealthLine),
                  label: 'Tema',
                  value: 'Mode Terang',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: ColorName.white,
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.25),
                  offset: const Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 4.0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowText(
                  icon: const ImageIcon(IconName.contactsLine),
                  label: 'Help & Support',
                  value: '',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
                const SizedBox(height: 12.0),
                RowText(
                  icon: const ImageIcon(IconName.chatQuoteLine),
                  label: 'Contact us',
                  value: '',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
                const SizedBox(height: 12.0),
                RowText(
                  icon: const Icon(Icons.lock),
                  label: 'Privacy policy',
                  value: '',
                  valueColor: ColorName.primary,
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Button.filled(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthPage(),
                ),
              );
            },
            label: 'Logout',
          )
        ],
      ),
    );
  }
}
