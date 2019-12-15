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

defmodule GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria do
  @moduledoc """
  The report criteria for a report of type "FLOODLIGHT".

  ## Attributes

  *   `customRichMediaEvents` (*type:* `list(GoogleApi.DFAReporting.V34.Model.DimensionValue.t)`, *default:* `nil`) - The list of custom rich media events to include.
  *   `dateRange` (*type:* `GoogleApi.DFAReporting.V34.Model.DateRange.t`, *default:* `nil`) - The date range this report should be run for.
  *   `dimensionFilters` (*type:* `list(GoogleApi.DFAReporting.V34.Model.DimensionValue.t)`, *default:* `nil`) - The list of filters on which dimensions are filtered.
      Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
  *   `dimensions` (*type:* `list(GoogleApi.DFAReporting.V34.Model.SortedDimension.t)`, *default:* `nil`) - The list of dimensions the report should include.
  *   `floodlightConfigId` (*type:* `GoogleApi.DFAReporting.V34.Model.DimensionValue.t`, *default:* `nil`) - The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'.
  *   `metricNames` (*type:* `list(String.t)`, *default:* `nil`) - The list of names of metrics the report should include.
  *   `reportProperties` (*type:* `GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteriaReportProperties.t`, *default:* `nil`) - The properties of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customRichMediaEvents => list(GoogleApi.DFAReporting.V34.Model.DimensionValue.t()),
          :dateRange => GoogleApi.DFAReporting.V34.Model.DateRange.t(),
          :dimensionFilters => list(GoogleApi.DFAReporting.V34.Model.DimensionValue.t()),
          :dimensions => list(GoogleApi.DFAReporting.V34.Model.SortedDimension.t()),
          :floodlightConfigId => GoogleApi.DFAReporting.V34.Model.DimensionValue.t(),
          :metricNames => list(String.t()),
          :reportProperties =>
            GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteriaReportProperties.t()
        }

  field(:customRichMediaEvents, as: GoogleApi.DFAReporting.V34.Model.DimensionValue, type: :list)
  field(:dateRange, as: GoogleApi.DFAReporting.V34.Model.DateRange)
  field(:dimensionFilters, as: GoogleApi.DFAReporting.V34.Model.DimensionValue, type: :list)
  field(:dimensions, as: GoogleApi.DFAReporting.V34.Model.SortedDimension, type: :list)
  field(:floodlightConfigId, as: GoogleApi.DFAReporting.V34.Model.DimensionValue)
  field(:metricNames, type: :list)

  field(:reportProperties,
    as: GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteriaReportProperties
  )
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.ReportFloodlightCriteria do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
