# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Classroom.V1.Model.UserProfile do
  @moduledoc """
  Global information for a user.

  ## Attributes

  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - Email address of the user.

      Read-only.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifier of the user.

      Read-only.
  *   `name` (*type:* `GoogleApi.Classroom.V1.Model.Name.t`, *default:* `nil`) - Name of the user.

      Read-only.
  *   `permissions` (*type:* `list(GoogleApi.Classroom.V1.Model.GlobalPermission.t)`, *default:* `nil`) - Global permissions of the user.

      Read-only.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - URL of user's profile photo.

      Read-only.
  *   `verifiedTeacher` (*type:* `boolean()`, *default:* `nil`) - Represents whether a G Suite for Education user's domain administrator has
      explicitly verified them as being a teacher. If the user is not a member of
      a G Suite for Education domain, than this field will always be false.

      Read-only
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :emailAddress => String.t(),
          :id => String.t(),
          :name => GoogleApi.Classroom.V1.Model.Name.t(),
          :permissions => list(GoogleApi.Classroom.V1.Model.GlobalPermission.t()),
          :photoUrl => String.t(),
          :verifiedTeacher => boolean()
        }

  field(:emailAddress)
  field(:id)
  field(:name, as: GoogleApi.Classroom.V1.Model.Name)
  field(:permissions, as: GoogleApi.Classroom.V1.Model.GlobalPermission, type: :list)
  field(:photoUrl)
  field(:verifiedTeacher)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.UserProfile do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.UserProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.UserProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
