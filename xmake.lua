add_rules('mode.debug', 'mode.release')

set_installdir('$(builddir)/install-root')

target('lodash.qml')
	add_rules('qt.qmlplugin')

	add_files('src/Plugin.cpp', 'src/Plugin.hpp')
	add_files('src/qml.qrc')

	set_values('qt.qmlplugin.import_name', 'lodash')
	set_values('qt.qmlplugin.majorversion', '4')
	set_values('qt.qmlplugin.minorversion', '17')
	set_values('qt.qmlplugin.qmldirfile', 'qml/lodash/qmldir')
