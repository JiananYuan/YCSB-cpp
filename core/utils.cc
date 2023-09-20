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
#include <iostream>
#include "utils.h"

namespace ycsbc {

namespace utils {

const uint64_t kFNVOffsetBasis64 = 0xCBF29CE484222325ull;
const uint64_t kFNVPrime64 = 1099511628211ull;
std::vector<uint64_t> source_data;

uint64_t FNVHash64(uint64_t val) {
  uint64_t hash = kFNVOffsetBasis64;

  for (int i = 0; i < 8; i++) {
    uint64_t octet = val & 0x00ff;
    val = val >> 8;

    hash = hash ^ octet;
    hash = hash * kFNVPrime64;
  }
  return hash;
}

void read_source_data() {
  std::ifstream fin("/home/yjn/Desktop/VLDB/Dataset/books/books_seq_data.csv");
  uint64_t data;
  while (fin >> data) {
    source_data.push_back(data);
  }
  std::cout << "finish reading source data" << std::endl;
  fin.close();
}

// inline uint64_t Hash(uint64_t val) { return FNVHash64(val); }

uint64_t Hash(uint64_t val) { return source_data[val % source_data.size()]; }

uint32_t ThreadLocalRandomInt() {
  static thread_local std::random_device rd;
  static thread_local std::minstd_rand rn(rd());
  return rn();
}

double ThreadLocalRandomDouble(double min = 0.0, double max = 1.0) {
  static thread_local std::random_device rd;
  static thread_local std::minstd_rand rn(rd());
  static thread_local std::uniform_real_distribution<double> uniform(min, max);
  return uniform(rn);
}

///
/// Returns an ASCII code that can be printed to desplay
///
char RandomPrintChar() {
  return rand() % 94 + 33;
}

class Exception : public std::exception {
 public:
  Exception(const std::string &message) : message_(message) { }
  const char* what() const noexcept {
    return message_.c_str();
  }
 private:
  std::string message_;
};

bool StrToBool(std::string str) {
  std::transform(str.begin(), str.end(), str.begin(), ::tolower);
  if (str == "true" || str == "1") {
    return true;
  } else if (str == "false" || str == "0") {
    return false;
  } else {
    throw Exception("Invalid bool string: " + str);
  }
}

std::string Trim(const std::string &str) {
  auto front = std::find_if_not(str.begin(), str.end(), [](int c){ return std::isspace(c); });
  return std::string(front, std::find_if_not(str.rbegin(), std::string::const_reverse_iterator(front),
      [](int c){ return std::isspace(c); }).base());
}

} // utils

} // ycsbc

#endif // YCSB_C_UTILS_H_
