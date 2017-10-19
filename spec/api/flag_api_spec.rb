=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Flagr::FlagApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlagApi' do
  before do
    # run before each test
    @instance = Flagr::FlagApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlagApi' do
    it 'should create an instance of FlagApi' do
      expect(@instance).to be_instance_of(Flagr::FlagApi)
    end
  end

  # unit tests for create_flag
  # 
  # 
  # @param body create a flag
  # @param [Hash] opts the optional parameters
  # @return [Flag]
  describe 'create_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_flag
  # 
  # 
  # @param flag_id numeric ID of the flag
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_flags
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<Flag>]
  describe 'find_flags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_flag
  # 
  # 
  # @param flag_id numeric ID of the flag to get
  # @param [Hash] opts the optional parameters
  # @return [Flag]
  describe 'get_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_flag
  # 
  # 
  # @param flag_id numeric ID of the flag to get
  # @param body update a flag
  # @param [Hash] opts the optional parameters
  # @return [Flag]
  describe 'put_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_flag_enabled
  # 
  # 
  # @param flag_id numeric ID of the flag to get
  # @param body set flag enabled state
  # @param [Hash] opts the optional parameters
  # @return [Flag]
  describe 'set_flag_enabled test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
