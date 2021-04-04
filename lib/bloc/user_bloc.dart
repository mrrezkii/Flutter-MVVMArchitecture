import 'package:bloc/bloc.dart';
import 'package:mvvm_demo/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(initialState);

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromAPI(event);
      yield user;
    } catch (_) {}
  }
}
