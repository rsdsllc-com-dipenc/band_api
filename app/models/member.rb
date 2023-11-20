# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer          not null
#
# Indexes
#
#  index_members_on_band_id  (band_id)
#
# Foreign Keys
#
#  band_id  (band_id => bands.id)
#
class Member < ApplicationRecord
  belongs_to :band
end
