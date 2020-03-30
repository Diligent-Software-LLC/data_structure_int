require_relative 'test_helper'

# DataStructureIntTest.
# @abstract
#   Tests the DataStructure type interface.
class DataStructureIntTest < Minitest::Test

  CLASS = DataStructureInt

  # test_conf_doc_f_ex().
  # @abstract
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and 
  #   README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')

  end

  # test_version_declared().
  # @abstract
  #   The version was declared.
  def test_version_declared()
    refute_nil(::DataStructureInt::VERSION)
  end

  # setup().
  # @abstract
  #   Set fixtures.
  def setup()
  end

  # test_methods_dec().
  # @abstract
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
  # @abstract
  #   Cleanup.
  def teardown()
  end

end

