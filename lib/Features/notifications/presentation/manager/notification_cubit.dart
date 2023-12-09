import 'package:alandalos_project/Features/notifications/model/notification_model.dart';
import 'package:bloc/bloc.dart';
import '../../data/data_source.dart';
import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit(this.getNotification) : super(NotificationInitial());
  final GetNotification getNotification;
  Future<void> getAllData(String parentId) async {
    NotificationModel data;
    data = await getNotification.getNotificationData(parentId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessNotification(data));
    }
    else {
      emit(FeaturedRepositoryFailureNotification(data.message!));

    }
  }
}

