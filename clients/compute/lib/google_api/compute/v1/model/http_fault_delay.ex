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

defmodule GoogleApi.Compute.V1.Model.HttpFaultDelay do
  @moduledoc """
  Specifies the delay introduced by Loadbalancer before forwarding the request to the backend service as part of fault injection.

  ## Attributes

  *   `fixedDelay` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Specifies the value of the fixed delay interval.
  *   `percentage` (*type:* `float()`, *default:* `nil`) - The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection. The value must be between 0.0 and 100.0 inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixedDelay => GoogleApi.Compute.V1.Model.Duration.t() | nil,
          :percentage => float() | nil
        }

  field(:fixedDelay, as: GoogleApi.Compute.V1.Model.Duration)
  field(:percentage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpFaultDelay do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpFaultDelay.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpFaultDelay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
