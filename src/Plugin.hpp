#pragma once

#include <QtQml/QQmlEngineExtensionPlugin>

namespace minervous::lodash
{
	class Plugin : public QQmlEngineExtensionPlugin
	{
		Q_OBJECT
		Q_PLUGIN_METADATA(IID QQmlEngineExtensionInterface_iid)

	public:
		Plugin();
		~Plugin() override = default;

		void initializeEngine(QQmlEngine *engine, const char *uri) override;
	};
} // namespace minervous::lodash
