=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Flagr::SetFlagEnabledRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SetFlagEnabledRequest' do
  before do
    # run before each test
    @instance = Flagr::SetFlagEnabledRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SetFlagEnabledRequest' do
    it 'should create an instance of SetFlagEnabledRequest' do
      expect(@instance).to be_instance_of(Flagr::SetFlagEnabledRequest)
    end
  end
  describe 'test attribute "enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

