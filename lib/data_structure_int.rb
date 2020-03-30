# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "data_structure_int/version"

# DataStructureInt.
# @abstract
#   A DataStructure type interface.
class DataStructureInt

  undef :initialize

  # self.instance?(obj = nil).
  # @abstract
  #   Boolean method. Verifies an object is a data structure instance.
  # @param [*] obj
  #   Any object.
  # @return [TrueClass, FalseClass] boolean
  #   True in the case the argument's class is an element of the types set.
  #   False otherwise.
  def self.instance?(obj = nil)
  end

  # self.type?(type = nil).
  # @abstract
  #   Boolean method. Verifies a type is a DataStructure.
  # @param [*] type
  #   Any type.
  # @return [TrueClass, FalseClass] boolean
  #   True in the case the type is an element of the types set. False otherwise.
  def self.type?(type = nil)
  end

end
