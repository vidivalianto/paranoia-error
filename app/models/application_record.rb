class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  acts_as_paranoid

  belongs_to :deleter, class_name: 'User', optional: true
end
