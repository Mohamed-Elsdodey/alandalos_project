import 'package:bloc/bloc.dart';
import '../../data/data_source.dart';
import '../../models/message_model.dart';
import 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  MessageCubit(this.getMessages) : super(ExamDetailsInitial());
  final GetMessages getMessages;
  Future<void> getAllData(String parentId) async {
    MessageModel data;
    data = await getMessages.getMessageData(parentId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessMessages(data));
    }
    else {
      emit(FeaturedRepositoryFailureMessages(data.message!));

    }
  }
}

