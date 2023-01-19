import 'package:get/get.dart';
import '../services/data_services.dart';

class DataController extends GetxController {
  List list = [].obs;
  final service = new DateServices();

  var _loading = false.obs;

  get loading => _loading;

  get newList => list.where((e) => e["status"]).map((e) => e).toList();

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  _loadData() async {
    _loading.value = true;
    try {
      var info = service.getUsers();
      list.addAll(await info);
    } catch (e) {
      print("Encountered error !");
    } finally {
      _loading.value = false;
    }
  }
}
