import '../models/story_model.dart';
import '../models/user_model.dart';

const User user = User(
  name: 'presence.fit',
  profileImageUrl:
      'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
);



const List<Story> stories = [


  Story(
    url:
        'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg',
    media: MediaType.image,
    user: user,
    duration: Duration(seconds: 5),
  ),
  Story(
    url: 'assets/videos/v1.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
  Story(
    url: 'assets/videos/v2.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
  Story(
    url:
        'https://images.unsplash.com/photo-1531694611353-d4758f86fa6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
    media: MediaType.image,
    duration: Duration(seconds: 5),
    user: user,
  ),
  Story(
    url: 'assets/videos/v3.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
];
List<UserStoryList> storyListUser = [
  UserStoryList(
      user: const User(
        name: 'Test User',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 1',
        profileImageUrl:
            'assets/images.img3.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 2',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 3',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 4',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 5',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Test User 6',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
];

class UserStoryList {
  List<Story> story;
  User user;

  UserStoryList({required this.story, required this.user});
}
