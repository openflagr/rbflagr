# rbflagr

Flagr - the Ruby gem for the Flagr

Flagr is a feature flagging, A/B testing and dynamic configuration microservice. The base path for all the APIs is \"/api/v1\". 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.13
- Package version: 0.2.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build rbflagr.gemspec
```

Then either install the gem locally:

```shell
gem install ./rbflagr-0.2.0.gem
```
(for development, run `gem install --dev ./rbflagr-0.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'rbflagr', '~> 0.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'rbflagr', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'rbflagr'

api_instance = Flagr::ConstraintApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

body = Flagr::CreateConstraintRequest.new # CreateConstraintRequest | create a constraint


begin
  result = api_instance.create_constraint(flag_id, segment_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ConstraintApi->create_constraint: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Flagr::ConstraintApi* | [**create_constraint**](docs/ConstraintApi.md#create_constraint) | **POST** /flags/{flagID}/segments/{segmentID}/constraints | 
*Flagr::ConstraintApi* | [**delete_constraint**](docs/ConstraintApi.md#delete_constraint) | **DELETE** /flags/{flagID}/segments/{segmentID}/constraints/{constraintID} | 
*Flagr::ConstraintApi* | [**find_constraints**](docs/ConstraintApi.md#find_constraints) | **GET** /flags/{flagID}/segments/{segmentID}/constraints | 
*Flagr::ConstraintApi* | [**put_constraint**](docs/ConstraintApi.md#put_constraint) | **PUT** /flags/{flagID}/segments/{segmentID}/constraints/{constraintID} | 
*Flagr::DistributionApi* | [**find_distributions**](docs/DistributionApi.md#find_distributions) | **GET** /flags/{flagID}/segments/{segmentID}/distributions | 
*Flagr::DistributionApi* | [**put_distributions**](docs/DistributionApi.md#put_distributions) | **PUT** /flags/{flagID}/segments/{segmentID}/distributions | 
*Flagr::EvaluationApi* | [**post_evaluation**](docs/EvaluationApi.md#post_evaluation) | **POST** /evaluation | 
*Flagr::EvaluationApi* | [**post_evaluation_batch**](docs/EvaluationApi.md#post_evaluation_batch) | **POST** /evaluation/batch | 
*Flagr::ExportApi* | [**get_export_sq_lite**](docs/ExportApi.md#get_export_sq_lite) | **GET** /export/sqlite | 
*Flagr::FlagApi* | [**create_flag**](docs/FlagApi.md#create_flag) | **POST** /flags | 
*Flagr::FlagApi* | [**delete_flag**](docs/FlagApi.md#delete_flag) | **DELETE** /flags/{flagID} | 
*Flagr::FlagApi* | [**find_flags**](docs/FlagApi.md#find_flags) | **GET** /flags | 
*Flagr::FlagApi* | [**get_flag**](docs/FlagApi.md#get_flag) | **GET** /flags/{flagID} | 
*Flagr::FlagApi* | [**get_flag_entity_types**](docs/FlagApi.md#get_flag_entity_types) | **GET** /flags/entity_types | 
*Flagr::FlagApi* | [**get_flag_snapshots**](docs/FlagApi.md#get_flag_snapshots) | **GET** /flags/{flagID}/snapshots | 
*Flagr::FlagApi* | [**put_flag**](docs/FlagApi.md#put_flag) | **PUT** /flags/{flagID} | 
*Flagr::FlagApi* | [**set_flag_enabled**](docs/FlagApi.md#set_flag_enabled) | **PUT** /flags/{flagID}/enabled | 
*Flagr::HealthApi* | [**get_health**](docs/HealthApi.md#get_health) | **GET** /health | 
*Flagr::SegmentApi* | [**create_segment**](docs/SegmentApi.md#create_segment) | **POST** /flags/{flagID}/segments | 
*Flagr::SegmentApi* | [**delete_segment**](docs/SegmentApi.md#delete_segment) | **DELETE** /flags/{flagID}/segments/{segmentID} | 
*Flagr::SegmentApi* | [**find_segments**](docs/SegmentApi.md#find_segments) | **GET** /flags/{flagID}/segments | 
*Flagr::SegmentApi* | [**put_segment**](docs/SegmentApi.md#put_segment) | **PUT** /flags/{flagID}/segments/{segmentID} | 
*Flagr::SegmentApi* | [**put_segments_reorder**](docs/SegmentApi.md#put_segments_reorder) | **PUT** /flags/{flagID}/segments/reorder | 
*Flagr::VariantApi* | [**create_variant**](docs/VariantApi.md#create_variant) | **POST** /flags/{flagID}/variants | 
*Flagr::VariantApi* | [**delete_variant**](docs/VariantApi.md#delete_variant) | **DELETE** /flags/{flagID}/variants/{variantID} | 
*Flagr::VariantApi* | [**find_variants**](docs/VariantApi.md#find_variants) | **GET** /flags/{flagID}/variants | 
*Flagr::VariantApi* | [**put_variant**](docs/VariantApi.md#put_variant) | **PUT** /flags/{flagID}/variants/{variantID} | 


## Documentation for Models

 - [Flagr::Constraint](docs/Constraint.md)
 - [Flagr::CreateConstraintRequest](docs/CreateConstraintRequest.md)
 - [Flagr::CreateFlagRequest](docs/CreateFlagRequest.md)
 - [Flagr::CreateSegmentRequest](docs/CreateSegmentRequest.md)
 - [Flagr::CreateVariantRequest](docs/CreateVariantRequest.md)
 - [Flagr::Distribution](docs/Distribution.md)
 - [Flagr::Error](docs/Error.md)
 - [Flagr::EvalContext](docs/EvalContext.md)
 - [Flagr::EvalDebugLog](docs/EvalDebugLog.md)
 - [Flagr::EvalResult](docs/EvalResult.md)
 - [Flagr::EvaluationBatchRequest](docs/EvaluationBatchRequest.md)
 - [Flagr::EvaluationBatchResponse](docs/EvaluationBatchResponse.md)
 - [Flagr::EvaluationEntity](docs/EvaluationEntity.md)
 - [Flagr::Flag](docs/Flag.md)
 - [Flagr::FlagSnapshot](docs/FlagSnapshot.md)
 - [Flagr::PutDistributionsRequest](docs/PutDistributionsRequest.md)
 - [Flagr::PutFlagRequest](docs/PutFlagRequest.md)
 - [Flagr::PutSegmentReorderRequest](docs/PutSegmentReorderRequest.md)
 - [Flagr::PutSegmentRequest](docs/PutSegmentRequest.md)
 - [Flagr::PutVariantRequest](docs/PutVariantRequest.md)
 - [Flagr::Segment](docs/Segment.md)
 - [Flagr::SegmentDebugLog](docs/SegmentDebugLog.md)
 - [Flagr::SetFlagEnabledRequest](docs/SetFlagEnabledRequest.md)
 - [Flagr::Variant](docs/Variant.md)


## Documentation for Authorization

 All endpoints do not require authorization.


## Use Makefile
`make gen`

