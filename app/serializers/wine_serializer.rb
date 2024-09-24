class WineSerializer < ActiveModel::Serializer
  attributes :id, :varietal, :bottle_size, :vintage, :about, :image_url, :bold, :tannic, :dry, :acidic
end
