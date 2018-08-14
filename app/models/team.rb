class Team < ApplicationRecord
  has_many :users


  def self.search(param)
    param.strip!
    param.downcase!
    to_send_back = name_matches(param).uniq
    return nil unless to_send_back
    to_send_back
  end

  def self.name_matches(param)
    matches('name', param)
  end

  def self.matches(field_name, param)
    Team.where("#{field_name.downcase} like?", "%#{param}%")
  end

end
