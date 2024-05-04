# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director
    d_id = self.director_id
    director = Director.where({ :id => d_id}).at(0)
    return director
  end

  def characters
    my_id = self.id
    mathching_characters = Character.where({ :movie_id => my_id})
    return mathching_characters
  end


end
