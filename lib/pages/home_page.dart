import 'package:exhibit/mixins/after_layout_mixi.dart';
import 'package:exhibit/models/exhibit_model/exhibit_model.dart';
import 'package:exhibit/widgets/exhibit_widget.dart';
import 'package:flutter/material.dart';

import '../http/exhibit_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AfterLayoutMixin {
  final exhibitLoader = RestExhibitsLoader();
  List<ExhibitModel>? exhibits;

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    final data = await exhibitLoader.getExhibitList();
    setState(() {
      exhibits = data;
    });
  }

  bool get hasExhibits => exhibits != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Exhibit'),
      ),
      body: hasExhibits ? ListView.builder(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        itemCount: hasExhibits ? exhibits!.length : 1,
        itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 12,
                bottom: 12,
              ),
              child: ExhibitWidget(
                exhibit: exhibits![index],
              ),
            );
        },
      ) : const Center(child: CircularProgressIndicator()),
    );
  }
}
