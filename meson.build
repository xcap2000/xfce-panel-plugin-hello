project(
    'xfce-panel-plugin-hello',
    'c',
    'vala',
    version: '0.1.0',
    meson_version: '>=1.0.1'
)

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0')
]

subdir('src')
subdir('test')

executable(
    meson.project_name(),
    sources: sources_with_main,
    dependencies: dependencies,
    install: true
)