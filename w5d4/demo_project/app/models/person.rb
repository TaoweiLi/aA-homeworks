# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string
#  house_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Person < ApplicationRecord
  validates :name, presence: true  #为了验证db里面的table和person class里面数据的一致性！
  validates :house_id, presence: true

  belongs_to(
    :house,    #name matters, should related to teh foreign_key!!!
    class_name: "House",    #OR :House
    foreign_key: :house_id,    # people's foriegn key
    primary_key: :id,    #house's id
  )
end
