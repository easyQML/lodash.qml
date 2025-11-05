Project {
	Product {
		name: 'lodash.qml'

		Group {
			name: 'QML files'
			files: ['**']
			prefix: 'qml/'
			qbs.installPrefix: project.installContentsPath
			qbs.installDir: project.installImportsDir
			qbs.installSourceBase: prefix
			qbs.install: true
		}
	}
}
