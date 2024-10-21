import 'package:my_view_app_001/model/daycare_client_model.dart';

class DaycareClientViewModel {

    List<DaycareClientModel> items = [
        DaycareClientModel(name: 'Maria', nifNumber: 123456, dateOfBirth: DateTime.now(), isActive: true )
    ];

    addClient(String name, int nifNumber, DateTime dateOfBirth, bool isActive) {
      items.add(DaycareClientModel(
        name: name, 
        nifNumber: nifNumber, 
        dateOfBirth: dateOfBirth, 
        isActive: isActive));
    }

}




