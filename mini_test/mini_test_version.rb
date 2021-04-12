# frozen_string_literal: true

require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/amaoto/version')

# VersionTest
class VersionTest < Minitest::Test
  def test_version
    assert_equal Amaoto::VERSION, '1.1.0'
  end
end
