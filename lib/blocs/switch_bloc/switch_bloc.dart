import '../bloc_exports.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends HydratedBloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchInitial(switchValue: false)) {
    on<SwitchOnEvent>((event, emit) {
      emit(const SwitchState(switchValue: true));
    });

    on<SwitchOffEvent>((event, emit) {
      emit(const SwitchState(switchValue: false));
    });
    
  }
  
  @override
  SwitchState? fromJson(Map<String, dynamic> json) {
    return SwitchState.fromMap(json);
  }
  
  @override
  Map<String, dynamic>? toJson(SwitchState state) {
    return state.toMap();
  }
}
