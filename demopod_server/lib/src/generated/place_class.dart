/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Place extends _i1.TableRow {
  Place({
    int? id,
    required this.name,
    required this.location,
    required this.type,
  }) : super(id);

  factory Place.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Place(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
    );
  }

  static final t = PlaceTable();

  String name;

  String location;

  String type;

  @override
  String get tableName => 'place';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'type': type,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'location':
        location = value;
        return;
      case 'type':
        type = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Place>> find(
    _i1.Session session, {
    PlaceExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Place>(
      where: where != null ? where(Place.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Place?> findSingleRow(
    _i1.Session session, {
    PlaceExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Place>(
      where: where != null ? where(Place.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Place?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Place>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PlaceExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Place>(
      where: where(Place.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Place row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Place row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Place row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PlaceExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Place>(
      where: where != null ? where(Place.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PlaceExpressionBuilder = _i1.Expression Function(PlaceTable);

class PlaceTable extends _i1.Table {
  PlaceTable() : super(tableName: 'place');

  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final location = _i1.ColumnString('location');

  final type = _i1.ColumnString('type');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        location,
        type,
      ];
}

@Deprecated('Use PlaceTable.t instead.')
PlaceTable tPlace = PlaceTable();
