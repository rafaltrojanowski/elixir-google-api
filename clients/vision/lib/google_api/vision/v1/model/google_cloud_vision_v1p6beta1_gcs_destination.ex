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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1GcsDestination do
  @moduledoc """
  The Google Cloud Storage location where the output will be written to.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage URI prefix where the results will be stored. Results
      will be in JSON format and preceded by its corresponding input URI prefix.
      This field can either represent a gcs file prefix or gcs directory. In
      either case, the uri should be unique because in order to get all of the
      output files, you will need to do a wildcard gcs search on the uri prefix
      you provide.

      Examples:

      *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
      will be created in gs://bucket-name/here/ and the names of the
      output files will begin with "filenameprefix".

      *    Directory Prefix: gs://bucket-name/some/location/   The output files
      will be created in gs://bucket-name/some/location/ and the names of the
      output files could be anything because there was no filename prefix
      specified.

      If multiple outputs, each response is still AnnotateFileResponse, each of
      which contains some subset of the full list of AnnotateImageResponse.
      Multiple outputs can happen if, for example, the output JSON is too large
      and overflows into multiple sharded files.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t()
        }

  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1GcsDestination do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1GcsDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1GcsDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
