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
    dependency('gtk+-3.0'),
    dependency('libxfce4panel-2.0')
]

vapi_dir = join_paths(meson.current_source_dir(), 'vapi')
add_project_arguments(['--vapidir', vapi_dir], language: 'vala')

subdir('src')
subdir('test')

executable(
    meson.project_name(),
    sources: source_files,
    dependencies: dependencies,
    install: true
)