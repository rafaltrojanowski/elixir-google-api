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

defmodule GoogleApi.DFAReporting.V34.Model.AdvertiserGroup do
  @moduledoc """
  Groups advertisers together so that reports can be generated for the entire group at once.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this advertiser group. This is a read-only field that can be left blank.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this advertiser group. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#advertiserGroup`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserGroup".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this advertiser group. This is a required field and must be less than 256 characters long and unique among advertiser groups of the same account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t()
        }

  field(:accountId)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.AdvertiserGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.AdvertiserGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.AdvertiserGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
