test_files = [
    'GreetingService'
]

foreach name : test_files
    test(name, executable(name, name + 'Test.vala', base_source_files, dependencies: dependencies))
endforeach