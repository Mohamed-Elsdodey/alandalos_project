

import 'package:alandalos_project/Features/notifications/model/notification_model.dart';

abstract class NotificationState {}

class NotificationInitial extends NotificationState {}
class FeaturedRepositoryFailureNotification extends NotificationState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureNotification(this.errMessage);
}
class FeaturedRepositorySuccessNotification extends NotificationState {
  final NotificationModel dataInfo;
  FeaturedRepositorySuccessNotification(this.dataInfo);
}
class FeaturedRepositoryLoadingNotification extends NotificationState {


}
