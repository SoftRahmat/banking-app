import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'package:bank_cofundr/model/cofundnow_model.dart';

class FundnowDbProvider {
  Database db;

  FundnowDbProvider() {
    init();
  }
  Future<List<int>> fetchTopIds() {
    return null;
  }

  void init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "items.db");
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database newDb, int version) {
        newDb.execute("""
          CREATE TABLE Items
            (
              UserID INTEGER PRIMARY KEY,
              FetchType TEXT,
            )
        """);
      },
    );
  }

  Future<FundnowRequestModel> fetchItem(int id) async {
    final maps = await db.query(
      "Items",
      columns: null,
      where: "id = ?",
      whereArgs: [id],
    );

    if (maps.length > 0) {
      return FundnowRequestModel();
    }

    return null;
  }

  Future<int> addItem(FundnowResponseModel item) {
    return db.insert(
      "Items",
      item.toJson(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<int> clear() {
    return db.delete("Items");
  }
}

final fundnowDbProvider = FundnowDbProvider();
