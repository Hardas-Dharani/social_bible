import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final searchTxtField = TextEditingController();
  List<String> goalList = [
    'Breakfast',
    'Snack',
    'Lunch',
    'Dinner',
  ];
  final serachBool = false.obs;
  List<Map<String, dynamic>> messagesD = [
    {
      'from': 'sender',
      'message': 'hi',
      'time': '18:35',
    },
    {
      'from': 'receiver',
      'message': 'hello',
      'time': '18:36',
    },
    {
      'from': 'sender',
      'message':
          'whats up! where are you? whats up! where are you? whats up! where are you? whats up! where are you?',
      'time': '18:37',
    },
    {
      'from': 'receiver',
      'message': 'Fine. I am in Banaglore',
      'time': '18:38',
    },
    {
      'from': 'sender',
      'message': 'How is your life going man',
      'time': '18:39',
    },
    {
      'from': 'receiver',
      'message':
          'Going well. I am planning to move in mumbai. let see what happen',
      'time': '18:40',
    },
    {
      'from': 'sender',
      'message': 'Thats great',
      'time': '18:41',
    },
    {
      'from': 'receiver',
      'message': 'Hmmm',
      'time': '18:42',
    },
    {
      'from': 'sender',
      'message': 'ok',
      'time': '18:43',
    },
    {
      'from': 'receiver',
      'message': 'bye',
      'time': '18:44',
    },
  ];
  List<Map<String, dynamic>> activeUserList = [
    {
      'name': 'Alice Kutcher',
      'image':
          'https://images.unsplash.com/photo-1509967419530-da38b4704bc6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'numberMessage': '2',
      'message': 'No need! Just few weeks and i...'
    },
    {
      'name': 'Alex Whitaker',
      'image':
          'https://images.unsplash.com/photo-1599834562135-b6fc90e642ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFuJTIwZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      'numberMessage': '4',
      'message': 'No need! Just few weeks and i...'
    },
    {
      'name': 'Amanda Russel',
      'image':
          'https://i.pinimg.com/originals/d3/16/63/d31663633440ac62705f59e932f91b16.jpg',
      'numberMessage': '1',
      'message': 'No need! Just few weeks and i...'
    },
    {
      'name': 'Bianc West',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/709/384/930/women-face-portrait-simple-background-wallpaper-preview.jpg',
      'numberMessage': '8',
      'message': 'No need! Just few weeks and i...'
    },
    {
      'name': 'anca Russel',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/475/610/536/women-model-face-portrait-wallpaper-preview.jpg',
      'numberMessage': '16',
      'message': 'No need! Just few weeks and i...'
    },
    {
      'name': 'ianca Amanda',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/277/283/743/portrait-face-women-model-wallpaper-preview.jpg',
      'numberMessage': '155',
      'message': 'You can replace this with alm...'
    }
  ];
  int selectedGoalBool = 0;
  updateGoalIndex(int index) {
    selectedGoalBool = index;
    update();
  }
}
