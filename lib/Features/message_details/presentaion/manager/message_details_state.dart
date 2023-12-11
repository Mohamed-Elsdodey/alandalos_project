


import 'package:alandalos_project/Features/message_details/model/message_details_model.dart';

abstract class GetMessageDetailsState {}

class GetMessagesDetailsInitial extends GetMessageDetailsState {}
class FeaturedRepositoryFailureMessagesDetails extends GetMessageDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureMessagesDetails(this.errMessage);
}
class FeaturedRepositorySuccessMessagesDetails extends GetMessageDetailsState {
  final MessageDetailsModel dataInfo;
  FeaturedRepositorySuccessMessagesDetails(this.dataInfo);
}
class FeaturedRepositoryLoadingMessagesDetails extends GetMessageDetailsState {


}
