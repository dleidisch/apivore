require 'spec_helper'
include Apivore::RspecBuilder

describe "Apivore", :type => :request do

  apivore_setup '/services/{id}.json', 'get', '200' do
    {'id' => 1}
  end

  apivore_setup '/services.json', 'post', '204' do
    {"_data" => {'name' => 'hello world'}}
  end

  apivore_setup '/services/{id}.json', 'put', '204' do
    {'id' => 1}
  end

  apivore_setup '/services/{id}.json', 'delete', '204' do
    {'id' => 1}
  end

  apivore_setup '/services/{id}.json', 'patch', '204' do
    {'id' => 1}
  end

  validate("/swagger-doc.json")
end