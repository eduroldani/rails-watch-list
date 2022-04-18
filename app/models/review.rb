class Review < ApplicationRecord
  belongs_to :list, dependent: :destroy
end
