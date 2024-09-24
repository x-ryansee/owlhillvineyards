class OliveOilSerializer < ActiveModel::Serializer
  attributes :id, :olive_species, :bottle_size, :other_ingredients, :about, :image
end
