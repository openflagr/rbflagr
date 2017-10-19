=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module Flagr
  class DistributionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param flag_id numeric ID of the flag
    # @param segment_id numeric ID of the segment
    # @param [Hash] opts the optional parameters
    # @return [Array<Distribution>]
    def find_distributions(flag_id, segment_id, opts = {})
      data, _status_code, _headers = find_distributions_with_http_info(flag_id, segment_id, opts)
      return data
    end

    # 
    # 
    # @param flag_id numeric ID of the flag
    # @param segment_id numeric ID of the segment
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Distribution>, Fixnum, Hash)>] Array<Distribution> data, response status code and response headers
    def find_distributions_with_http_info(flag_id, segment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DistributionApi.find_distributions ..."
      end
      # verify the required parameter 'flag_id' is set
      if @api_client.config.client_side_validation && flag_id.nil?
        fail ArgumentError, "Missing the required parameter 'flag_id' when calling DistributionApi.find_distributions"
      end
      if @api_client.config.client_side_validation && flag_id < 1
        fail ArgumentError, 'invalid value for "flag_id" when calling DistributionApi.find_distributions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling DistributionApi.find_distributions"
      end
      if @api_client.config.client_side_validation && segment_id < 1
        fail ArgumentError, 'invalid value for "segment_id" when calling DistributionApi.find_distributions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/flags/{flagID}/segments/{segmentID}/distributions".sub('{' + 'flagID' + '}', flag_id.to_s).sub('{' + 'segmentID' + '}', segment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Distribution>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionApi#find_distributions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # replace the distribution with the new setting
    # @param flag_id numeric ID of the flag
    # @param segment_id numeric ID of the segment
    # @param body array of distributions
    # @param [Hash] opts the optional parameters
    # @return [Array<Distribution>]
    def put_distributions(flag_id, segment_id, body, opts = {})
      data, _status_code, _headers = put_distributions_with_http_info(flag_id, segment_id, body, opts)
      return data
    end

    # 
    # replace the distribution with the new setting
    # @param flag_id numeric ID of the flag
    # @param segment_id numeric ID of the segment
    # @param body array of distributions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Distribution>, Fixnum, Hash)>] Array<Distribution> data, response status code and response headers
    def put_distributions_with_http_info(flag_id, segment_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DistributionApi.put_distributions ..."
      end
      # verify the required parameter 'flag_id' is set
      if @api_client.config.client_side_validation && flag_id.nil?
        fail ArgumentError, "Missing the required parameter 'flag_id' when calling DistributionApi.put_distributions"
      end
      if @api_client.config.client_side_validation && flag_id < 1
        fail ArgumentError, 'invalid value for "flag_id" when calling DistributionApi.put_distributions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling DistributionApi.put_distributions"
      end
      if @api_client.config.client_side_validation && segment_id < 1
        fail ArgumentError, 'invalid value for "segment_id" when calling DistributionApi.put_distributions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DistributionApi.put_distributions"
      end
      # resource path
      local_var_path = "/flags/{flagID}/segments/{segmentID}/distributions".sub('{' + 'flagID' + '}', flag_id.to_s).sub('{' + 'segmentID' + '}', segment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Distribution>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionApi#put_distributions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end