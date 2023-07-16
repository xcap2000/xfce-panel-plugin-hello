# XFCE Panel Plugin Hello

## Prerequisites

```bash
$ sudo apt install exo-utils libexo-2-0 libexo-common libgarcon-1-0 libgarcon-common libxfce4panel-2.0-4 libxfce4panel-2.0-dev libxfce4ui-2-0 libxfce4ui-common libxfce4util7 libxfce4util-common libxfce4util-dev libxfconf-0-dev xfce4-panel xfconfguint
```

## Creating the project

Create a meson.build file with the following contents:

```meson
project('xfce-panel-plugin-hello', 'c', 'vala')

sources = = files(
    'main.vala'
)

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0')
]

executable('xfce-panel-plugin-hello', sources, dependencies: dependencies)
```

Create a foo.vala file with the following contents:

```c#
int main (string[] args) {
    stdout.printf ("hello, world\n");
    return 0;
}
```

Run the following command to initialize build directory:

```bash
$ meson setup build
```

Run the following to build:

```bash
$ meson compile -C build
# or
$ cd build
$ meson compile
```

Run the following to test:

```bash
$ meson test -C build
# or
$ cd build
$ meson test
```

To run the application:

```bash
$ ./build/xfce-panel-plugin-hello
# or
$ cd build
$ ./xfce-panel-plugin-hello
```

## References

```
https://mesonbuild.com/Vala.html
https://mesonbuild.com/Quick-guide.html
https://gitlab.freedesktop.org/gstreamer/gstreamer/-/blob/main/.vscode/launch.json
https://www.collabora.com/news-and-blog/blog/2023/04/18/meson-and-vscode-develop-your-project-modern-ide/
https://wiki.gnome.org/Projects/Vala/ValaOnWindows
https://wiki.gnome.org/Projects/Vala/TestSample
https://github.com/syfds/vala-meson-unit-test-sample/tree/master
https://github.com/rilian-la-te/vala-panel-appmenu/tree/master
```

Register plugin examples:

```
https://github.com/rilian-la-te/vala-panel-appmenu/blob/master/applets/xfce4-plugin-appmenu.vala
https://github.com/rilian-la-te/xfce4-sntray-plugin/blob/master/src/panels/xfce4-sntray-applet.vala
```