require 'rails_helper'

RSpec.describe 'dry_run examples', type: :model, dry_run_example: true do  
  ##
  # Rspec general config
  ##
  context 'RSpec' do
    it 'should work' do
      expect(true).to be_truthy
    end
  end

  ##
  # ShouldaMatchers config
  ##
  context 'ShouldaMatchers' do
    require 'active_model'

    class ShouldaMatchersDryRunExample
      include ActiveModel::Model
      attr_accessor :some_url

      validates_format_of :some_url, with: URI.regexp
    end

    subject { ShouldaMatchersDryRunExample.new }

    it 'should work' do
      is_expected.to allow_value('https://foo.com').for(:some_url)
    end
  end

  ##
  # FactoryBot config
  ##
  context 'FactoryBot' do
    class User
      attr_accessor :name
    end

    FactoryBot.define do
      factory :user do
        name { "John" }
      end
    end
  
    it 'should work' do
      user = FactoryBot.build(:user)
      expect(user).to be
    end
  end
end