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

defmodule GoogleApi.Composer.V1beta1.Model.PrivateEnvironmentConfig do
  @moduledoc """
  The configuration information for configuring a private Composer environment.

  ## Attributes

  - enablePrivateEnvironment (boolean()): Optional. If &#x60;true&#x60;, a private Composer environment is created. Defaults to: `null`.
  - privateClusterConfig (PrivateClusterConfig): Optional. Configuration for private cluster for a private Composer environment. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enablePrivateEnvironment => any(),
          :privateClusterConfig => GoogleApi.Composer.V1beta1.Model.PrivateClusterConfig.t()
        }

  field(:enablePrivateEnvironment)
  field(:privateClusterConfig, as: GoogleApi.Composer.V1beta1.Model.PrivateClusterConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.PrivateEnvironmentConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.PrivateEnvironmentConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.PrivateEnvironmentConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
