# frozen_string_literal: true

# Helper methods for testing puppet content
module PuppetLitmus; end

require 'bolt_spec/run'
require 'puppet_litmus/honeycomb_utils'
require 'puppet_litmus/inventory_manipulation'
require 'puppet_litmus/puppet_helpers'
require 'puppet_litmus/rake_helper'
require 'puppet_litmus/spec_helper_acceptance'

# Helper methods for testing puppet content
module PuppetLitmus
  include BoltSpec::Run
  include PuppetLitmus::InventoryManipulation
  include PuppetLitmus::PuppetHelpers
  include PuppetLitmus::RakeHelper
end
