import 'dart:indexed_db';
import 'dart:html';


String datastore = "goconnectx";

Future<dynamic> getData(String key) async {
  dynamic hash;
  await openDatabase('gcx',datastore).then((Database db) {
    // do database stuff
      var tx = db.transaction(datastore, "readonly");
      var store = tx.objectStore(datastore);
    hash = store.getObject(key);
    tx.completed;
  });
  return await hash;
}
Future<dynamic> setData(String key, value) async {
    await openDatabase('gcx', datastore).then((Database db) {
      // do database stuff
      var tx = db.transaction(datastore, "readwrite");
      var store = tx.objectStore(datastore);
      store.put(value, key);
      tx.completed;
    });
    return value;
}

Future<Database> openDatabase(String dbName, String storeName, {int version = 1}) {
    return window.indexedDB.open(dbName, version: version, onUpgradeNeeded: (e) {
      Database db = e.target.result;
      if (!db.objectStoreNames.contains(storeName)) {
        db.createObjectStore(storeName);
      }
    });
  }

Future<IdbFactory> delDatabase(String dbName) {
  return window.indexedDB.deleteDatabase(dbName);
}
