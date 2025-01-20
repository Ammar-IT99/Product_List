import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/repositories/product_repository.dart'; // Import ProductRepository
import 'package:product_list/di.config.dart';

import 'models/product.dart'; // Import generated file

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

@Injectable()
class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<List<Product>> fetchProducts() {
    // TODO: implement fetchProducts
    throw UnimplementedError();
  }
}