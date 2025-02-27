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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.SslCertsListResponse do
  @moduledoc """
  SslCerts list response.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t)`, *default:* `nil`) - List of client certificates for the instance.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#sslCertsList**.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t()) | nil,
          :kind => String.t() | nil
        }

  field(:items, as: GoogleApi.SQLAdmin.V1beta4.Model.SslCert, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCertsListResponse do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.SslCertsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCertsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
