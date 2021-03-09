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

defmodule GoogleApi.Container.V1.Model.SetLocationsRequest do
  @moduledoc """
  SetLocationsRequest sets the locations of the cluster.

  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
  *   `locations` (*type:* `list(String.t)`, *default:* `nil`) - Required. The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. Changing the locations a cluster is in will result in nodes being either created or removed from the cluster, depending on whether locations are being added or removed. This list must always include the cluster's primary zone.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (project, location, cluster) of the cluster to set locations. Specified in the format `projects/*/locations/*/clusters/*`.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project number](https://support.google.com/cloud/answer/6158840). This field has been deprecated and replaced by the name field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t() | nil,
          :locations => list(String.t()) | nil,
          :name => String.t() | nil,
          :projectId => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:clusterId)
  field(:locations, type: :list)
  field(:name)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetLocationsRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SetLocationsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetLocationsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
