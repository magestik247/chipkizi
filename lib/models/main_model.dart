import 'package:chipkizi/models/account_model.dart';
import 'package:chipkizi/models/comment_model.dart';
import 'package:chipkizi/models/file_model.dart';
import 'package:chipkizi/models/messaging_model.dart';
import 'package:chipkizi/models/navigation_model.dart';
import 'package:chipkizi/models/player_model.dart';
import 'package:chipkizi/models/recording_actions_model.dart';
import 'package:chipkizi/models/recording_model.dart';
import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model
    with AccountModel, RecordingModel, NavigationModel,
    PlayerModel, RecordingActionsModel, CommentModel, MessagingModel, FileModel
     {
  MainModel() {
    updateLoginStatus();
    getRecordings();
    firebaseCloudMessagingListeners();
  }
}
