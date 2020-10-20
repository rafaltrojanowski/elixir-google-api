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

defmodule GoogleApi.Domains.V1alpha2.Model.RegisterParameters do
  @moduledoc """
  Parameters required to register a new domain.

  ## Attributes

  *   `availability` (*type:* `String.t`, *default:* `nil`) - Indicates whether the domain is available for registration. This value is accurate when obtained by calling `RetrieveRegisterParameters`, but is approximate when obtained by calling `SearchDomains`.
  *   `domainName` (*type:* `String.t`, *default:* `nil`) - The domain name. Unicode domain names are expressed in Punycode format.
  *   `domainNotices` (*type:* `list(String.t)`, *default:* `nil`) - Notices about special properties of the domain.
  *   `supportedPrivacy` (*type:* `list(String.t)`, *default:* `nil`) - Contact privacy options that the domain supports.
  *   `yearlyPrice` (*type:* `GoogleApi.Domains.V1alpha2.Model.Money.t`, *default:* `nil`) - Price to register or renew the domain for one year.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availability => String.t(),
          :domainName => String.t(),
          :domainNotices => list(String.t()),
          :supportedPrivacy => list(String.t()),
          :yearlyPrice => GoogleApi.Domains.V1alpha2.Model.Money.t()
        }

  field(:availability)
  field(:domainName)
  field(:domainNotices, type: :list)
  field(:supportedPrivacy, type: :list)
  field(:yearlyPrice, as: GoogleApi.Domains.V1alpha2.Model.Money)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1alpha2.Model.RegisterParameters do
  def decode(value, options) do
    GoogleApi.Domains.V1alpha2.Model.RegisterParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1alpha2.Model.RegisterParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
