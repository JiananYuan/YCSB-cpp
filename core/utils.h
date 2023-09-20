//
//  utils.h
//  YCSB-C
//
//  Created by Jinglei Ren on 12/5/14.
//  Copyright (c) 2014 Jinglei Ren <jinglei@ren.systems>.
//  Modifications Copyright 2023 Chengye YU <yuchengye2013 AT outlook.com>.
//

#ifndef YCSB_C_UTILS_H_
#define YCSB_C_UTILS_H_

#include <algorithm>
#include <cstdint>
#include <exception>
#include <random>
#include <locale>
#include <fstream>

#if defined(_MSC_VER)
#if _MSC_VER >= 1911
#define MAYBE_UNUSED [[maybe_unused]]
#else
#define MAYBE_UNUSED
#endif
#elif defined(__GNUC__)
#define MAYBE_UNUSED __attribute__ ((unused))
#endif

namespace ycsbc {

namespace utils {

extern const uint64_t kFNVOffsetBasis64;
extern const uint64_t kFNVPrime64;
extern std::vector<uint64_t> source_data;

extern uint64_t FNVHash64(uint64_t val);

extern void read_source_data();

extern uint64_t Hash(uint64_t val);

extern uint32_t ThreadLocalRandomInt();

extern double ThreadLocalRandomDouble(double min = 0.0, double max = 1.0);

///
/// Returns an ASCII code that can be printed to desplay
///
extern char RandomPrintChar();

class Exception : public std::exception {
 public:
  Exception(const std::string &message) : message_(message) { }
  const char* what() const noexcept {
    return message_.c_str();
  }
 private:
  std::string message_;
};

extern bool StrToBool(std::string str);

extern std::string Trim(const std::string &str);

} // utils

} // ycsbc

#endif // YCSB_C_UTILS_H_
