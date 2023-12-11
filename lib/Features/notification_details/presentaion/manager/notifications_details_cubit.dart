import 'package:alandalos_project/Features/notification_details/data-source/data-source.dart';
import 'package:bloc/bloc.dart';
import '../../model/notificationDetailsModel.dart';
import 'notifications_details_state.dart';

class GetNotificationDetailsCubit extends Cubit<GetNotificationDetailsState> {
  GetNotificationDetailsCubit(this.getNotificationDetails) : super(GetNotificationDetailsInitial());
  final GetNotificationDetails getNotificationDetails;
  Future<void> getAllDataNotificationDetails(String parentId,String notificationId,foreignId) async {
    NotificationDetailsModel data;
    data = (await getNotificationDetails.getNotificationDataDetails(parentId,notificationId)) ;
    if(data.status == 200)
    {

      emit(FeaturedRepositorySuccessNotificationDetails(data));

    }
    else {
      emit(FeaturedRepositoryFailureNotificationDetails(data.message!));

    }
  }
}

