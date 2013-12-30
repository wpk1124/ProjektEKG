#pragma once

#include <vector>
#include <array>
#include <memory>
#include "RRIntervals.h"
using namespace Ecg::AtrialFibr;

class RRIntervalsApi {
  std::unique_ptr<RRIntervalMethod> rrmethod;
  double entropyResult;
  double divergenceResult;

public:
  RRIntervalsApi(std::vector<CIterators> &RPeaksIterators);
  double GetEntropy();
  double GetDivergence();
};
