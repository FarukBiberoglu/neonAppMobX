import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';  // Bu satır önemli: counter_store.g.dart dosyasını işaret ediyor

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;  // MobX observable değişkeni

  @action
  void increment() {  // MobX action metodu
    counter++;
  }
  @action
  void sayacAzalt(){
    counter --;
  }
}
