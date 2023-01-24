import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/carbi.dart';

final CarbiDb _carbiDb = CarbiDb();

class DailySheetProvider extends ChangeNotifier {
  List<DailySheet> availableSheets = [];
  int selectedIndex = 0;

  bool get hasNext => selectedIndex < availableSheets.length - 1;
  bool get hasPrevious => selectedIndex > 0;

  bool isLoading = false;
  bool hasError = false;
  String errorMessage = '';

  void moveTo(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<void> loadData() async {
    try {
      isLoading = true;
      hasError = false;
      availableSheets = await _carbiDb.getAllDailySheets();
    } catch (_) {
      hasError = true;
      errorMessage = 'An error occured!';
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> addSheet(DailySheetsCompanion sheet) async {
    try {
      isLoading = true;
      hasError = false;
      final int id =
          await _carbiDb.addDailySheet(sheet, mode: InsertMode.insertOrReplace);

      availableSheets = await _carbiDb.getAllDailySheets();
      // availableSheets
      //   ..add(DailySheet(id: id, sheetDate: sheet.sheetDate.value))
      //   ..sort(
      //       (sheet1, sheet2) => sheet1.sheetDate.compareTo(sheet2.sheetDate));
    } catch (_) {
      hasError = true;
      errorMessage = 'An error occured';
    }

    isLoading = false;
    notifyListeners();
  }
}
