class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :reject_both_blank

  def reject_both_blank(attributes)
    if attributes[:id]
      attributes.merge!(_destroy: "1") if attributes[:route_name].blank? and attributes[:name].blank? and attributes[:minutes_on_foot].blank?
      !attributes[:route_name].blank? and attributes[:name].blank? and attributes[:minutes_on_foot].blank?
    else
      attributes[:route_name].blank? and attributes[:name].blank? and attributes[:minutes_on_foot].blank?
    end
  end
end
