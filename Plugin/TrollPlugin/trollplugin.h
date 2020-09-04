#ifndef TROLLPLUGIN_H
#define TROLLPLUGIN_H
/*
 * 类 TrollPlugin 前面有TROLLSHARED_EXPORT修饰，而前面说了这个宏将会展开为Q_DECL_EXPORT。
 * 我们可以认为，由Q_DECL_EXPORT修饰的类，就是被暴露（export）出的类。
 * 也就是说，现在在我们的插件中，由TROLLSHARED_EXPORT修饰的 TrollPlugin 类已经被暴露出，可以由主程序访问到。
 * 继承实现MonsterInterface提供的接口
 */
#include "TrollPlugin_global.h"
#include "monsterinterface.h"
class TROLLPLUGIN_EXPORT TrollPlugin: public QObject,MonsterInterface
{
public:
    TrollPlugin();
};

#endif // TROLLPLUGIN_H
