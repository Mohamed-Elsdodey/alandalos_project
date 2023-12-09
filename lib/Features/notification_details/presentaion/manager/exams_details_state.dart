



import '../../model/notificationDetailsModel.dart';

abstract class GetNotificationDetailsState {}

class GetNotificationDetailsInitial extends GetNotificationDetailsState {}
class FeaturedRepositoryFailureNotificationDetails extends GetNotificationDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureNotificationDetails(this.errMessage);
}
class FeaturedRepositorySuccessNotificationDetails extends GetNotificationDetailsState {
  final NotificationDetailsModel dataInfo;
  FeaturedRepositorySuccessNotificationDetails(this.dataInfo);
}
class FeaturedRepositoryLoadingNotificationDetails extends GetNotificationDetailsState {


}
