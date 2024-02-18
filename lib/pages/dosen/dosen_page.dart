// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DosenPage extends StatefulWidget {
  const DosenPage({Key? key}) : super(key: key);

  @override
  State<DosenPage> createState() => _DosenPageState();
}

class _DosenPageState extends State<DosenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dosen"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
