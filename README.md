# glassy

A Flutter package for all platforms which provides Glass Effects

## Screenshots

<img src="https://github.com/smae1993/glassy/blob/main/screenShots/screen_shot_1.png" height="400em" width="225em" />

## Usage

[Example](https://github.com/parth58/Social-SignIn-Buttons/blob/master/example/lib/main.dart)

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/smae1993/glassy/blob/main/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    glassy:
```

### How to use

```dart
void main() {
  /// This Config is Optional
  Glassy().setConfig(GlassyConfig(
      radius: 15,
      backgroundColor: Colors.grey,
      backgroundOpacity: 0.2,
      borderOpacity: 0.5));
  runApp(const MyApp());
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/test.jpg", fit: BoxFit.cover),
          SizedBox(
            child: Column(children: [
              GlassyCard(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                  const Expanded(
                      child: Text(
                    "This is a GlassyCard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
                ],
              )),
              const SizedBox(
                width: 300,
                height: 400,
                child: GlassyCard(
                    child: Center(
                  child: Text("This is another Glassy Card",
                      style: TextStyle(color: Colors.white)),
                )),
              ),
              Expanded(
                  child: Center(
                child: GlassyButton(
                    child: const Text("This is Glassy Button"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return const GlassyDialog(
                                title: "This is Glassy Dialog Title",
                                child: Center(
                                  child: Text(
                                    "This is Glassy Dialog Content Text Widget",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ));
                          }));
                    }),
              ))
            ]),
          )
        ],
      ),
    );
  }
}

```

### List Of Widgets
* GlassyCard
* GlassyButton
* GlassyDialog


# License
Copyright (c) 2020 Sayed Mohammad Amin Emrani

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).