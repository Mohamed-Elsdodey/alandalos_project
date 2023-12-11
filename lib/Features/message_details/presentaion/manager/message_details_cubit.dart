import 'package:alandalos_project/Features/message_details/data-source/data-source.dart';
import 'package:alandalos_project/Features/message_details/model/message_details_model.dart';
import 'package:alandalos_project/Features/message_details/presentaion/manager/message_details_state.dart';
import 'package:bloc/bloc.dart';


class GetMessageDetailsCubit extends Cubit<GetMessageDetailsState> {
  GetMessageDetailsCubit(this.getMessageDetails) : super(GetMessagesDetailsInitial());
  final GetMessageDetails getMessageDetails;
  Future<void> getAllDataMessageDetails(String parentId,String MessageId) async {
    MessageDetailsModel data;
    data = await getMessageDetails.getMessageDataDetails(parentId,MessageId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessMessagesDetails(data ));
    }
    else {
      emit(FeaturedRepositoryFailureMessagesDetails(data.message!));

    }
  }
}

