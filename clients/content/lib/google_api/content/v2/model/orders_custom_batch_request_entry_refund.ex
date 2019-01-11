# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryRefund do
  @moduledoc """


  ## Attributes

  - amount (Price): Deprecated. Please use amountPretax and amountTax instead. Defaults to: `null`.
  - amountPretax (Price): The amount that is refunded. Either amount or amountPretax should be filled. Defaults to: `null`.
  - amountTax (Price): Tax amount that corresponds to refund amount in amountPretax. Optional, but if filled, amountPretax must be set. Calculated automatically if not provided. Defaults to: `null`.
  - reason (String.t): The reason for the refund. Defaults to: `null`.
  - reasonText (String.t): The explanation of the reason. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Content.V2.Model.Price.t(),
          :amountPretax => GoogleApi.Content.V2.Model.Price.t(),
          :amountTax => GoogleApi.Content.V2.Model.Price.t(),
          :reason => any(),
          :reasonText => any()
        }

  field(:amount, as: GoogleApi.Content.V2.Model.Price)
  field(:amountPretax, as: GoogleApi.Content.V2.Model.Price)
  field(:amountTax, as: GoogleApi.Content.V2.Model.Price)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryRefund do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryRefund.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryRefund do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
