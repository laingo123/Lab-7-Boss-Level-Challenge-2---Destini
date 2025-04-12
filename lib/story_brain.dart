import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
      storyTitle:
          'Bạn đang đi bộ trong rừng thì nghe tiếng động lạ từ bụi cây.',
      choice1: 'Tiến lại gần xem thử.',
      choice2: 'Bỏ chạy thật nhanh.',
    ),
    Story(
      storyTitle: 'Một chú chó con xuất hiện, trông rất dễ thương.',
      choice1: 'Dắt nó về nhà.',
      choice2: 'Để nó lại và tiếp tục đi.',
    ),
    Story(
      storyTitle: 'Chó con hóa ra là chó sói! Nó gầm gừ...',
      choice1: 'Chạy hết tốc lực!',
      choice2: 'Leo lên cây gần đó.',
    ),
    Story(
      storyTitle: 'Bạn bị trượt chân và té xuống suối. Thôi xong!',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    Story(
      storyTitle: 'Bạn leo cây thành công và thoát khỏi nguy hiểm!',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    Story(
      storyTitle: 'Chó con ngoan ngoãn đi theo bạn về nhà. Một người bạn mới!',
      choice1: 'Chơi lại',
      choice2: '',
    ),
  ];

  int _storyNumber = 0;

  String getStory() => _storyData[_storyNumber].storyTitle;
  String getChoice1() => _storyData[_storyNumber].choice1;
  String getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0) {
      _storyNumber = (choiceNumber == 1) ? 1 : 2;
    } else if (_storyNumber == 1) {
      _storyNumber = (choiceNumber == 1) ? 5 : 2;
    } else if (_storyNumber == 2) {
      _storyNumber = (choiceNumber == 1) ? 3 : 4;
    } else {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
