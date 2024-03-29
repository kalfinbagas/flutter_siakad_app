// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/jadwal_matkul_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/khs_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/nilai_mk_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absesi_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/sample_map_page.dart';

import '../../common/constants/colors.dart';
import '../../common/constants/images.dart';
import '../../common/widgets/menu_card.dart';
import '../../common/widgets/search_input.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Perkuliahan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: ColorName.primary,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SampleMapPage();
                        },
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.map,
                    color: ColorName.green,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsensiPage()));
                  },
                  icon: const Icon(
                    Icons.qr_code_scanner,
                    color: ColorName.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: ColorName.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        SearchInput(
          controller: searchController,
        ),
        const SizedBox(height: 40.0),
        MenuCard(
          label: 'Kartu Hasil\nStudi',
          backgroundColor: const Color(0xff686BFF),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const KhsPage();
                },
              ),
            );
          },
          imagePath: Images.khs,
        ),
        const SizedBox(height: 40.0),
        MenuCard(
          label: 'Nilai\nMata Kuliah',
          backgroundColor: const Color(0xffFFB023),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const NilaiMkPage();
                },
              ),
            );
          },
          imagePath: Images.nMatkul,
        ),
        const SizedBox(height: 40.0),
        MenuCard(
          label: 'Jadwal\nMata Kuliah',
          backgroundColor: const Color(0xffFF68F0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const JadwalMatkulPage();
                },
              ),
            );
          },
          imagePath: Images.jadwal,
        ),
      ],
    );
  }
}
