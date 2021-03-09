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

defmodule GoogleApi.Container.V1.Model.ListClustersResponse do
  @moduledoc """
  ListClustersResponse is the result of ListClustersRequest.

  ## Attributes

  *   `clusters` (*type:* `list(GoogleApi.Container.V1.Model.Cluster.t)`, *default:* `nil`) - A list of clusters in the project in the specified zone, or across all ones.
  *   `missingZones` (*type:* `list(String.t)`, *default:* `nil`) - If any zones are listed here, the list of clusters returned may be missing those zones.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusters => list(GoogleApi.Container.V1.Model.Cluster.t()) | nil,
          :missingZones => list(String.t()) | nil
        }

  field(:clusters, as: GoogleApi.Container.V1.Model.Cluster, type: :list)
  field(:missingZones, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ListClustersResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ListClustersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ListClustersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
