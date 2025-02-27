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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse do
  @moduledoc """
  Backup run list results.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t)`, *default:* `nil`) - A list of backup runs in reverse chronological order of the enqueued time.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#backupRunsList**.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:items, as: GoogleApi.SQLAdmin.V1beta4.Model.BackupRun, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
