# == Schema Information
#
# Table name: series
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Series < ApplicationRecord
end
