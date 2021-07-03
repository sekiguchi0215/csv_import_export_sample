class User < ApplicationRecord
  def self.import_csv(file:)
    CSV.foreach(file.path, headers: true) do |row|
      create!(row.to_h)
    end
  end
end
