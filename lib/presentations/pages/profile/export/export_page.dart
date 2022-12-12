import 'package:flutter/material.dart';

import '../../../../constants.dart';

import '../../../../features/app/presentation/widgets/default_app_bar.dart';
import 'export_result_page.dart';

class ExportDataScreen extends StatefulWidget {
  const ExportDataScreen({super.key});

  @override
  State<ExportDataScreen> createState() => _ExportDataScreenState();
}

class _ExportDataScreenState extends State<ExportDataScreen> {
  final items = ['CSV', 'Excel', 'Word'];
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Export'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    // const DefaultBar(
                    //   title: Text('What data do you want to export?'),
                    // ),
                    // const DefaultBar(
                    //   title: Text('When date range?', style: body1),
                    // ),
                    // const DefaultBar(
                    //   title: Text(
                    //     'What format do you want to export?',
                    //     style: body1,
                    //   ),
                    // ),
                    DropdownButtonFormField<int>(
                      value: _selected,
                      onChanged: (v) => setState(() => _selected = v!),
                      items: [0, 1, 2]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(items[e]),
                            ),
                          )
                          .toList(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding),
                        child: Image.asset(
                          'assets/icons/arrow-down-2.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text('Export'),
                onPressed: () {
                  // TODO(quy): Bloc add Send file to email
                  Navigator.pushReplacementNamed(
                    context,
                    ExportDataPromptPage.routeName,
                  );
                },
                // icon: Image.asset('assets/icons/download.png', color: kLight100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DataFormat { csv, excel, word }
