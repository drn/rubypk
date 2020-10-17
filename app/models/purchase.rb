class Purchase < ApplicationRecord
  def self.truncate!
    connection.execute('truncate purchases')
  end
end
