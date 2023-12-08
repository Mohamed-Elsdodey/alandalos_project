

import '../../model/login_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}
class FeaturedRepositoryFailure extends LoginState {
  final List<String>? errMessage;

  FeaturedRepositoryFailure(this.errMessage);
}
class FeaturedRepositorySuccess extends LoginState {
  final Data dataInfo;
  FeaturedRepositorySuccess(this.dataInfo);
}
class FeaturedRepositoryLoading extends LoginState {


}
