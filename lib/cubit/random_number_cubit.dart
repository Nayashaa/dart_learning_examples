import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'random_number_state.dart';

class RandomNumberCubit extends Cubit<RandomNumberState> {
  RandomNumberCubit() : super(RandomNumberInitial());
}
