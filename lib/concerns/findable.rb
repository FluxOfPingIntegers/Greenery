module Findable

  module InstanceMethods

    def save
      if self.all.none? {|x| x.name == self.name}
      self.all << self
      end
    end

  end

end