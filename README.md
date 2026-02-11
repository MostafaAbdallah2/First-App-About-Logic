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
