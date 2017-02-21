project('HelloFlatpakQt', 'cpp')

qt5_dep = dependency('qt5', modules: 'Widgets')

# Import theextension module that knows how
# to invake Qt tools.
qt5 =import('qt5')
prep = qt5.preprocess(moc_headers : 'window.h')

executable('helloflatpakqt',
	sources : ['main.cpp', 'window.cpp', prep],
	dependencies: qt5_dep,
	install : true)
