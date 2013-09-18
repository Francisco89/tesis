#ifndef CYAPI_GLOBAL_H
#define CYAPI_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CYAPI_LIBRARY)
#  define CYAPISHARED_EXPORT Q_DECL_EXPORT
#else
#  define CYAPISHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CYAPI_GLOBAL_H
