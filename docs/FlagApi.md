# Flagr::FlagApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_flag**](FlagApi.md#create_flag) | **POST** /flags | 
[**delete_flag**](FlagApi.md#delete_flag) | **DELETE** /flags/{flagID} | 
[**find_flags**](FlagApi.md#find_flags) | **GET** /flags | 
[**get_flag**](FlagApi.md#get_flag) | **GET** /flags/{flagID} | 
[**put_flag**](FlagApi.md#put_flag) | **PUT** /flags/{flagID} | 
[**set_flag_enabled**](FlagApi.md#set_flag_enabled) | **PUT** /flags/{flagID}/enabled | 


# **create_flag**
> Flag create_flag(body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

body = Flagr::CreateFlagRequest.new # CreateFlagRequest | create a flag


begin
  result = api_instance.create_flag(body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->create_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFlagRequest**](CreateFlagRequest.md)| create a flag | 

### Return type

[**Flag**](Flag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_flag**
> delete_flag(flag_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

flag_id = 789 # Integer | numeric ID of the flag


begin
  api_instance.delete_flag(flag_id)
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->delete_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_flags**
> Array&lt;Flag&gt; find_flags



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

begin
  result = api_instance.find_flags
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->find_flags: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Flag&gt;**](Flag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flag**
> Flag get_flag(flag_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

flag_id = 789 # Integer | numeric ID of the flag to get


begin
  result = api_instance.get_flag(flag_id)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->get_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag to get | 

### Return type

[**Flag**](Flag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_flag**
> Flag put_flag(flag_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

flag_id = 789 # Integer | numeric ID of the flag to get

body = Flagr::PutFlagRequest.new # PutFlagRequest | update a flag


begin
  result = api_instance.put_flag(flag_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->put_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag to get | 
 **body** | [**PutFlagRequest**](PutFlagRequest.md)| update a flag | 

### Return type

[**Flag**](Flag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_flag_enabled**
> Flag set_flag_enabled(flag_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::FlagApi.new

flag_id = 789 # Integer | numeric ID of the flag to get

body = Flagr::SetFlagEnabledRequest.new # SetFlagEnabledRequest | set flag enabled state


begin
  result = api_instance.set_flag_enabled(flag_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling FlagApi->set_flag_enabled: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag to get | 
 **body** | [**SetFlagEnabledRequest**](SetFlagEnabledRequest.md)| set flag enabled state | 

### Return type

[**Flag**](Flag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


