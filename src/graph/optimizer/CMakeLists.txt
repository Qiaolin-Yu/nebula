# Copyright (c) 2020 vesoft inc. All rights reserved.
#
# This source code is licensed under Apache 2.0 License.

nebula_add_library(
    optimizer_obj
    OBJECT
    OptimizerUtils.cpp
    Optimizer.cpp
    OptGroup.cpp
    OptRule.cpp
    OptContext.cpp
    rule/PushFilterDownGetNbrsRule.cpp
    rule/RemoveNoopProjectRule.cpp
    rule/CombineFilterRule.cpp
    rule/CollapseProjectRule.cpp
    rule/MergeGetVerticesAndDedupRule.cpp
    rule/MergeGetVerticesAndProjectRule.cpp
    rule/MergeGetNbrsAndDedupRule.cpp
    rule/MergeGetNbrsAndProjectRule.cpp
    rule/IndexScanRule.cpp
    rule/PushLimitDownGetNeighborsRule.cpp
    rule/PushStepSampleDownGetNeighborsRule.cpp
    rule/PushStepLimitDownGetNeighborsRule.cpp
    rule/TopNRule.cpp
    rule/PushEFilterDownRule.cpp
    rule/PushFilterDownAggregateRule.cpp
    rule/PushFilterDownProjectRule.cpp
    rule/PushFilterDownLeftJoinRule.cpp
    rule/PushFilterDownNodeRule.cpp
    rule/PushFilterDownScanVerticesRule.cpp
    rule/PushVFilterDownScanVerticesRule.cpp
    rule/OptimizeEdgeIndexScanByFilterRule.cpp
    rule/OptimizeTagIndexScanByFilterRule.cpp
    rule/UnionAllIndexScanBaseRule.cpp
    rule/UnionAllTagIndexScanRule.cpp
    rule/UnionAllEdgeIndexScanRule.cpp
    rule/GeoPredicateIndexScanBaseRule.cpp
    rule/GeoPredicateTagIndexScanRule.cpp
    rule/GeoPredicateEdgeIndexScanRule.cpp
    rule/IndexFullScanBaseRule.cpp
    rule/TagIndexFullScanRule.cpp
    rule/EdgeIndexFullScanRule.cpp
    rule/PushLimitDownIndexScanRule.cpp
    rule/PushLimitDownProjectRule.cpp
    rule/EliminateRowCollectRule.cpp
    rule/PushLimitDownScanAppendVerticesRule.cpp
    rule/GetEdgesTransformAppendVerticesLimitRule.cpp
    rule/GetEdgesTransformRule.cpp
    rule/PushLimitDownScanEdgesAppendVerticesRule.cpp
    rule/PushTopNDownIndexScanRule.cpp
    rule/EliminateAppendVerticesRule.cpp
    rule/PushLimitDownScanEdgesRule.cpp
)

nebula_add_subdirectory(test)
