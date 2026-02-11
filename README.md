# Logic App - Flutter Learning Project

A simple Flutter application focused on learning and experimenting with **basic UI and State Management concepts** in Flutter through various interactive screens.

## Screens Included

| Page   | Description                                                          | Main Components Used                     |
|--------|----------------------------------------------------------------------|-----------------------------------------|
| Page 1 | Display a grid of characters with single selection and a Sign button | GridView, GestureDetector, setState     |
| Page 2 | Display a large image + horizontal strip of small images (thumbnail gallery) | SingleChildScrollView, InkWell, Image.asset |
| Page 3 | Circular image with an interactive heart button (Like / Unlike)      | Stack, Positioned, CircleAvatar, setState |
| Page 4 | Multi-selection of interests using chips with display of selected items | Wrap, AnimatedContainer, Set, setState  |

## Main App Structure

- **Root widget**: Contains a `PageView` with a `PageController` to navigate between the four screens.
- Navigation is manual only via "Previous" and "Next" buttons (no swipe gestures).
- Each page independently manages its state using `setState`.

## Technologies Used

- Flutter (Dart)
- PageView + PageController
- GridView + Wrap
- GestureDetector + InkWell
- Asset Images
- State Management using `setState` only (educational project)


logic_app/
├── lib/
│   ├── Screans/
│   │   ├── pageOne.dart
│   │   ├── pageTwo.dart
│   │   ├── pageThree.dart
│   │   └── PageFour.dart
│   └── main.dart           # (Root widget)
├── images/


image': 'images/icon 02.png
image': 'images/icon 03.png
image': 'images/icon 05.png
image': 'images/icon 06.png
image': 'images/icon 07.png
image': 'images/icon 10.png
image': 'images/icon 11.png
image': 'images/icon 12.png
image': 'images/Icon 13.png
image': 'images/Icon 14.png
image': 'images/Icon 15.png
image': 'images/Icon 16.png
image': 'images/img 01.png

 
│   └── (كل الصور المستخدمة)
├── pubspec.yaml
└── README.md
