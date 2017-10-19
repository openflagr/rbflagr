=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Flagr::DistributionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DistributionApi' do
  before do
    # run before each test
    @instance = Flagr::DistributionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DistributionApi' do
    it 'should create an instance of DistributionApi' do
      expect(@instance).to be_instance_of(Flagr::DistributionApi)
    end
  end

  # unit tests for find_distributions
  # 
  # 
  # @param flag_id numeric ID of the flag
  # @param segment_id numeric ID of the segment
  # @param [Hash] opts the optional parameters
  # @return [Array<Distribution>]
  describe 'find_distributions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_distributions
  # 
  # replace the distribution with the new setting
  # @param flag_id numeric ID of the flag
  # @param segment_id numeric ID of the segment
  # @param body array of distributions
  # @param [Hash] opts the optional parameters
  # @return [Array<Distribution>]
  describe 'put_distributions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end