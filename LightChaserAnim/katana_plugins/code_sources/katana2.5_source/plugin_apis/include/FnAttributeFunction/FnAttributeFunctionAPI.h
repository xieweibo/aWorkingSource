// Copyright (c) 2016 The Foundry Visionmongers Ltd.
#ifndef KATANA_FNATTRIBUTEFUNCTION_FNATTRIBUTEFUNCTIONAPI_H_
#define KATANA_FNATTRIBUTEFUNCTION_FNATTRIBUTEFUNCTIONAPI_H_

#if defined(_WIN32)
#  if defined(FNATTRIBUTEFUNCTION_APIEXPORT)
#    define FNATTRIBUTEFUNCTION_API __declspec(dllexport)
#  elif !defined(FNATTRIBUTEFUNCTION_STATIC)
#    define FNATTRIBUTEFUNCTION_API __declspec(dllimport)
#  else
#    define FNATTRIBUTEFUNCTION_API
#  endif  // FNATTRIBUTEFUNCTION_APIEXPORT

#elif defined(FNATTRIBUTEFUNCTION_APIEXPORT)
#  define FNATTRIBUTEFUNCTION_API __attribute__((visibility("default")))
#else
#  define FNATTRIBUTEFUNCTION_API
#endif  // _WIN32

#endif  // KATANA_FNATTRIBUTEFUNCTION_FNATTRIBUTEFUNCTIONAPI_H_
