class DaughterModel < ApplicationRecord
  belongs_to :parent

  stampable optional: true
end
