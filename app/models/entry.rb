class Entry < ApplicationRecord
  # talks to the "entries" table
end
class Entry < ApplicationRecord
  belongs_to :place
end
