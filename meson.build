project('HelloFlatpakQt', 'cpp')
add_global_arguments('-std=c++11',language:'cpp')
qt5_dep = dependency('qt5', modules: 'Widgets')

# Import the extension module that knows how
# to invoke Qt tools.
qt5 =import('qt5')
prep = qt5.preprocess(moc_headers : 'window.h')

executable('helloflatpakqt',
	sources : ['main.cpp', 'window.cpp', prep],
	dependencies: qt5_dep,
	install : true)
