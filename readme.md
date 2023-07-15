# XFCE Panel Plugin Hello

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
```