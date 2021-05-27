import 'package:meelz/services/get_providers_instances.dart';
import 'package:provider/single_child_widget.dart';

class GetProvidersInstancesViewModel {
  List<SingleChildWidget> getProvidersInstancesViewModel() {
    return ProviderInstanceService().getProvidersInstances();
  }
}
