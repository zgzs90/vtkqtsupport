
#ifndef VTKFILTERSPROGRAMMABLE_EXPORT_H
#define VTKFILTERSPROGRAMMABLE_EXPORT_H

#ifdef VTKFILTERSPROGRAMMABLE_STATIC_DEFINE
#  define VTKFILTERSPROGRAMMABLE_EXPORT
#  define VTKFILTERSPROGRAMMABLE_NO_EXPORT
#else
#  ifndef VTKFILTERSPROGRAMMABLE_EXPORT
#    ifdef FiltersProgrammable_EXPORTS
        /* We are building this library */
#      define VTKFILTERSPROGRAMMABLE_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKFILTERSPROGRAMMABLE_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKFILTERSPROGRAMMABLE_NO_EXPORT
#    define VTKFILTERSPROGRAMMABLE_NO_EXPORT 
#  endif
#endif

#ifndef VTKFILTERSPROGRAMMABLE_DEPRECATED
#  define VTKFILTERSPROGRAMMABLE_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKFILTERSPROGRAMMABLE_DEPRECATED_EXPORT
#  define VTKFILTERSPROGRAMMABLE_DEPRECATED_EXPORT VTKFILTERSPROGRAMMABLE_EXPORT VTKFILTERSPROGRAMMABLE_DEPRECATED
#endif

#ifndef VTKFILTERSPROGRAMMABLE_DEPRECATED_NO_EXPORT
#  define VTKFILTERSPROGRAMMABLE_DEPRECATED_NO_EXPORT VTKFILTERSPROGRAMMABLE_NO_EXPORT VTKFILTERSPROGRAMMABLE_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSPROGRAMMABLE_NO_DEPRECATED
#    define VTKFILTERSPROGRAMMABLE_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersProgrammableModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSPROGRAMMABLE_EXPORT_H */
