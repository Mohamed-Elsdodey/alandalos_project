
import '../../models/message_model.dart';
abstract class MessageState {}

class ExamDetailsInitial extends MessageState {}
class FeaturedRepositoryFailureMessages extends MessageState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureMessages(this.errMessage);
}
class FeaturedRepositorySuccessMessages extends MessageState {
  final MessageModel dataInfo;
  FeaturedRepositorySuccessMessages(this.dataInfo);
}
class FeaturedRepositoryLoadingMessages extends MessageState {


}
