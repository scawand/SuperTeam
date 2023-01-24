import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/carbi.dart';
import 'package:provider/provider.dart';
import '../../../providers/dailysheet_provider.dart';
import '../../../utils/datetime_extension.dart';

class DailySheetPage extends StatefulWidget {
  const DailySheetPage({super.key});

  @override
  State<DailySheetPage> createState() => _DailySheetPageState();
}

class _DailySheetPageState extends State<DailySheetPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DailySheetProvider()
        ..loadData()
        ..addSheet(DailySheetsCompanion(
            sheetDate: Value(StartOfDay.sinceStartOfDay()))),
      child: Builder(
        builder: (context) {
          final data = Provider.of<DailySheetProvider>(context, listen: true);

          if (data.hasError) {
            return Center(
              child: Text(data.errorMessage),
            );
          }

          if (data.isLoading) {
            return const Center(
              child: Text('Loading..'),
            );
          }

          return Center(
            child: Text(
                'There are ${data.availableSheets.length} sheets available'),
          );
        },
      ),
    );
  }
}
