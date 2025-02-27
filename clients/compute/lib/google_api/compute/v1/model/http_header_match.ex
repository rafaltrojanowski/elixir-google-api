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

defmodule GoogleApi.Compute.V1.Model.HttpHeaderMatch do
  @moduledoc """
  matchRule criteria for request header matches.

  ## Attributes

  *   `exactMatch` (*type:* `String.t`, *default:* `nil`) - The value should exactly match contents of exactMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  *   `headerName` (*type:* `String.t`, *default:* `nil`) - The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method". When the URL map is bound to target gRPC proxy that has validateForProxyless field set to true, only non-binary user-specified custom metadata and the `content-type` header are supported. The following transport-level headers cannot be used in header matching rules: `:authority`, `:method`, `:path`, `:scheme`, `user-agent`, `accept-encoding`, `content-encoding`, `grpc-accept-encoding`, `grpc-encoding`, `grpc-previous-rpc-attempts`, `grpc-tags-bin`, `grpc-timeout` and `grpc-trace-bin.
  *   `invertMatch` (*type:* `boolean()`, *default:* `nil`) - If set to false, the headerMatch is considered a match if the match criteria above are met. If set to true, the headerMatch is considered a match if the match criteria above are NOT met. The default setting is false.
  *   `prefixMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must start with the contents of prefixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  *   `presentMatch` (*type:* `boolean()`, *default:* `nil`) - A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  *   `rangeMatch` (*type:* `GoogleApi.Compute.V1.Model.Int64RangeMatch.t`, *default:* `nil`) - The header value must be an integer and its value must be in the range specified in rangeMatch. If the header does not contain an integer, number or is empty, the match fails. For example for a range [-5, 0] - -3 will match. - 0 will not match. - 0.25 will not match. - -3someString will not match. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Note that rangeMatch is not supported for Loadbalancers that have their loadBalancingScheme set to EXTERNAL.
  *   `regexMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must match the regular expression specified in regexMatch. For regular expression grammar, please see: github.com/google/re2/wiki/Syntax For matching against a port specified in the HTTP request, use a headerMatch with headerName set to PORT and a regular expression that satisfies the RFC2616 Host header's port specifier. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Note that regexMatch only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  *   `suffixMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must end with the contents of suffixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exactMatch => String.t() | nil,
          :headerName => String.t() | nil,
          :invertMatch => boolean() | nil,
          :prefixMatch => String.t() | nil,
          :presentMatch => boolean() | nil,
          :rangeMatch => GoogleApi.Compute.V1.Model.Int64RangeMatch.t() | nil,
          :regexMatch => String.t() | nil,
          :suffixMatch => String.t() | nil
        }

  field(:exactMatch)
  field(:headerName)
  field(:invertMatch)
  field(:prefixMatch)
  field(:presentMatch)
  field(:rangeMatch, as: GoogleApi.Compute.V1.Model.Int64RangeMatch)
  field(:regexMatch)
  field(:suffixMatch)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpHeaderMatch do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpHeaderMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpHeaderMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
