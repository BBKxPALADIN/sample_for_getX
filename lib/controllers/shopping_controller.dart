import 'package:get/get.dart';
import '../models/product.dart';

class ShoppingController extends GetxController{
  var products=List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts()async{
    await Future.delayed(const Duration(seconds: 1));
    final productResult=[
      Product(
        id: 1,
        price: 45,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'FirstProd',
      ),
      Product(
        id: 2,
        price: 40,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'SecProd',
      ),
      Product(
        id: 3,
        price: 49.5,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'ThirdProd',
      ),
    ];
    products.value=productResult;
  }
}