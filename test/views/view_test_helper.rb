require "test_helper"
require "capybara/minitest"

class ViewTestCase < ActionView::TestCase
  include Capybara::Minitest::Assertions

  def page
    Capybara.string(rendered)
  end
end
