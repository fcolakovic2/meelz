import 'package:meelz/interface/provider_instance.dart';
import 'package:meelz/providers/page_index.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderInstanceService implements ProviderInstanceInterface {
  @override
  List<SingleChildWidget> getProvidersInstances() {
    return [
      ChangeNotifierProvider.value(value: PageIndexProvider()),
    ];
  }
}
