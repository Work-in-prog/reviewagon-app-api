class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :stroller_id
end
