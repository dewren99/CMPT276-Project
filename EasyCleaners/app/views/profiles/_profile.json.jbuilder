# frozen_string_literal: true

json.extract! profile, :first_name, :last_name, :burnaby, :richmond, :north_vancouver, :west_vancouver, :yale_town, :gas_town, :price
json.url profile_url(profile, format: :json)
