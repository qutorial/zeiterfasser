class Eintrag < ApplicationRecord
  belongs_to :kosten_traeger
  belongs_to :user
end
