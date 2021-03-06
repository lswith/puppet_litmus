# frozen_string_literal: true

module PuppetLitmus; end # rubocop:disable Style/Documentation

# a set of semi-private utility functions that should not contaminate the global namespace
module PuppetLitmus::HoneycombUtils
  module_function

  def add_platform_field(inventory_hash, target_node_name)
    facts = facts_from_node(inventory_hash, target_node_name)
    Honeycomb.current_span.add_field('litmus.platform', facts&.dig('platform'))
  end
end
