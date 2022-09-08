

import 'package:api_test/features/products/models/ProductModel.dart';
import 'package:api_test/features/products/services/remote_services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var allBrands = <AllBrand>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit

    fetchProducts();

    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    try{

      var products=  await RemoteServices.fetchMainPoducts();
      print('this is products in controller');
      print(products);
      if( products != null){
        print('product is not null');
        products.allBrands.forEach((element) {
          allBrands.add(element);
        });

      }
    }finally{
      isLoading(false);
    }
}

}