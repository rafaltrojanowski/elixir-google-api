# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.StreetViewPublish.V1.Model.Pose do
  @moduledoc """
  Raw pose measurement for an entity.

  ## Attributes

  *   `accuracyMeters` (*type:* `number()`, *default:* `nil`) - The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviation). For example, on Android, this value is available from this method: https://developer.android.com/reference/android/location/Location#getAccuracy(). Other platforms have different methods of obtaining similar accuracy estimations.
  *   `altitude` (*type:* `float()`, *default:* `nil`) - Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity.
  *   `heading` (*type:* `float()`, *default:* `nil`) - The following pose parameters pertain to the center of the photo. They match https://developers.google.com/streetview/spherical-metadata. Compass heading, measured at the center of the photo in degrees clockwise from North. Value must be >=0 and <360. NaN indicates an unmeasured quantity.
  *   `latLngPair` (*type:* `GoogleApi.StreetViewPublish.V1.Model.LatLng.t`, *default:* `nil`) - Latitude and longitude pair of the pose, as explained here: https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng When creating a Photo, if the latitude and longitude pair are not provided, the geolocation from the exif header is used. A latitude and longitude pair not provided in the photo or exif header causes the photo process to fail.
  *   `level` (*type:* `GoogleApi.StreetViewPublish.V1.Model.Level.t`, *default:* `nil`) - Level (the floor in a building) used to configure vertical navigation.
  *   `pitch` (*type:* `float()`, *default:* `nil`) - Pitch, measured at the center of the photo in degrees. Value must be >=-90 and <= 90. A value of -90 means looking directly down, and a value of 90 means looking directly up. NaN indicates an unmeasured quantity.
  *   `roll` (*type:* `float()`, *default:* `nil`) - Roll, measured in degrees. Value must be >= 0 and <360. A value of 0 means level with the horizon. NaN indicates an unmeasured quantity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracyMeters => number() | nil,
          :altitude => float() | nil,
          :heading => float() | nil,
          :latLngPair => GoogleApi.StreetViewPublish.V1.Model.LatLng.t() | nil,
          :level => GoogleApi.StreetViewPublish.V1.Model.Level.t() | nil,
          :pitch => float() | nil,
          :roll => float() | nil
        }

  field(:accuracyMeters)
  field(:altitude)
  field(:heading)
  field(:latLngPair, as: GoogleApi.StreetViewPublish.V1.Model.LatLng)
  field(:level, as: GoogleApi.StreetViewPublish.V1.Model.Level)
  field(:pitch)
  field(:roll)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Pose do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Pose.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Pose do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
