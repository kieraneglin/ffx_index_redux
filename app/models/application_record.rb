class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.find_by_id_or_slug(param)
    self.find_by(id: param).present? ? self.find_by!(id: param) : self.find_by!(slug: param)
  end
end
