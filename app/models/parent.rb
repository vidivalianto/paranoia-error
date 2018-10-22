class Parent < ApplicationRecord
  has_many :son_models, dependent: :destroy
  has_many :daughter_models, dependent: :restrict_with_error

  stampable optional: true
end
