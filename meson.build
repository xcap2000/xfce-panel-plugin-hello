project('xfce-panel-plugin-hello', 'c', 'vala')

sources = files(
    'main.vala'
)

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0')
]

executable('xfce-panel-plugin-hello', sources, dependencies: dependencies)