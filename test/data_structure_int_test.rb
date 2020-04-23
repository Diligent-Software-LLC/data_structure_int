require_relative 'test_helper'

# DataStructureIntTest.
# @class_description
#   Tests the DataStructure type interface.
class DataStructureIntTest < Minitest::Test

  CLASS = DataStructureInt

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
  end

  # test_methods_dec().
  # @description
  #   self.instance?(obj = nil) and self.type?(type = nil) were declared. The
  #   initialize method was undefined.
  def test_methods_dec()

    assert_respond_to(CLASS, 'instance?')
    assert_respond_to(CLASS, 'type?')
    assert_raises(NoMethodError) {
      CLASS.new()
    }

  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
