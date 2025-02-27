import 'package:heart_pick/domain/entities/product.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveAdapterId {
  HiveAdapterId._();

  static const int product = 0;
}

enum _HiveBoxType {
  products('products_box');

  const _HiveBoxType(this.value);

  final String value;
}

enum HiveKeys {
  productsKey('products');

  const HiveKeys(this.value);

  final String value;
}

abstract class HiveService {
  Future<void> initAndRegisterAdapters();

  Future<void> compactAndClose();

  Future<void> openHiveBoxes();

  List<List<Product>>? getProducts();

  Future<void> updateProducts(List<List<Product>> products);

  Future<void> clearProducts();
}

class HiveServiceImpl extends HiveService {
  HiveServiceImpl();

  @override
  Future<void> initAndRegisterAdapters() async {
    await Hive.initFlutter();
    Hive.registerAdapter(HiveProductAdapter());
  }

  @override
  Future<void> compactAndClose() async {
    final productsBox = Hive.box<dynamic>(_HiveBoxType.products.value);
    productsBox.compact();
    await productsBox.clear();
    Hive.close();
  }

  @override
  Future<void> openHiveBoxes() async {
    await Hive.openBox<dynamic>(_HiveBoxType.products.value);
  }

  @override
  Future<void> updateProducts(List<List<Product>> products) async {
    final box = Hive.box<dynamic>(_HiveBoxType.products.value);
    final hiveProducts = products;
    const key = 'products';
    box.deleteAll(box.keys);
    box.put(key, hiveProducts);
  }

  @override
  List<List<Product>>? getProducts() {
    final box = Hive.box<dynamic>(_HiveBoxType.products.value);
    final boxValue = box.get(HiveKeys.productsKey.value);
    if (boxValue == null) return null;
    List<List<Product>> products = [];
    products.addAll((products as List).map((item) => (item as List).map((e) => e as Product).toList()).toList());
    return products;
  }

  @override
  Future<void> clearProducts() async {
    final box = Hive.box<dynamic>(_HiveBoxType.products.value);
    await box.delete(HiveKeys.productsKey.value);
  }
}
