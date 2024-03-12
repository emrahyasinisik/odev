import 'user.dart';
import 'soyutlama-abstraction.dart';

class CustomerService implements Customerserviceinterface {
  @override
  Add(User user) {
    print("eklendi");
  }

  @override
  Update(User user) {
    print("geldi");
  }
} //yazılım ürünleri sürekli değişir ve gelişir.


