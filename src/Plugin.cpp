#include "Plugin.hpp"

minervous::lodash::Plugin::Plugin()
	: QQmlEngineExtensionPlugin{}
{
}

void minervous::lodash::Plugin::initializeEngine([[maybe_unused]] QQmlEngine *engine, [[maybe_unused]] const char *uri)
{
	// Nothing to do...
}
