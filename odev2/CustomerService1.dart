import 'soyutlama-abstraction.dart';
import 'user.dart';

class CustomerService1 implements Customerserviceinterface {
  @override
  Add(User user) {
    print("object");
  }

  @override
  Update(User user) {
    print("güncel");
  }
}
