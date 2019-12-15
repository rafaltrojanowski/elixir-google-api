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

defmodule GoogleApi.DFAReporting.V33.Model.Campaign do
  @moduledoc """
  Contains properties of a Campaign Manager campaign.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this campaign. This is a read-only field that can be left blank.
  *   `adBlockingConfiguration` (*type:* `GoogleApi.DFAReporting.V33.Model.AdBlockingConfiguration.t`, *default:* `nil`) - Ad blocking settings for this campaign.
  *   `additionalCreativeOptimizationConfigurations` (*type:* `list(GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration.t)`, *default:* `nil`) - Additional creative optimization configurations for the campaign.
  *   `advertiserGroupId` (*type:* `String.t`, *default:* `nil`) - Advertiser group ID of the associated advertiser.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this campaign. This is a required field.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the advertiser ID of this campaign. This is a read-only, auto-generated field.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Whether this campaign has been archived.
  *   `audienceSegmentGroups` (*type:* `list(GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup.t)`, *default:* `nil`) - Audience segment groups assigned to this campaign. Cannot have more than 300 segment groups.
  *   `billingInvoiceCode` (*type:* `String.t`, *default:* `nil`) - Billing invoice code included in the Campaign Manager client billing invoices associated with the campaign.
  *   `clickThroughUrlSuffixProperties` (*type:* `GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties.t`, *default:* `nil`) - Click-through URL suffix override properties for this campaign.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Arbitrary comments about this campaign. Must be less than 256 characters long.
  *   `createInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the creation of this campaign. This is a read-only field.
  *   `creativeGroupIds` (*type:* `list(String.t)`, *default:* `nil`) - List of creative group IDs that are assigned to the campaign.
  *   `creativeOptimizationConfiguration` (*type:* `GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration.t`, *default:* `nil`) - Creative optimization configuration for the campaign.
  *   `defaultClickThroughEventTagProperties` (*type:* `GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties.t`, *default:* `nil`) - Click-through event tag ID override properties for this campaign.
  *   `defaultLandingPageId` (*type:* `String.t`, *default:* `nil`) - The default landing page ID for this campaign.
  *   `endDate` (*type:* `Date.t`, *default:* `nil`) - Date on which the campaign will stop running. On insert, the end date must be today or a future date. The end date must be later than or be the same as the start date. If, for example, you set 6/25/2015 as both the start and end dates, the effective campaign run date is just that day only, 6/25/2015. The hours, minutes, and seconds of the end date should not be set, as doing so will result in an error. This is a required field.
  *   `eventTagOverrides` (*type:* `list(GoogleApi.DFAReporting.V33.Model.EventTagOverride.t)`, *default:* `nil`) - Overrides that can be used to activate or deactivate advertiser event tags.
  *   `externalId` (*type:* `String.t`, *default:* `nil`) - External ID for this campaign.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this campaign. This is a read-only auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this campaign. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#campaign`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#campaign".
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this campaign. This is a read-only field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this campaign. This is a required field and must be less than 256 characters long and unique among campaigns of the same advertiser.
  *   `nielsenOcrEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether Nielsen reports are enabled for this campaign.
  *   `startDate` (*type:* `Date.t`, *default:* `nil`) - Date on which the campaign starts running. The start date can be any date. The hours, minutes, and seconds of the start date should not be set, as doing so will result in an error. This is a required field.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this campaign. This is a read-only field that can be left blank.
  *   `traffickerEmails` (*type:* `list(String.t)`, *default:* `nil`) - Campaign trafficker contact emails.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :adBlockingConfiguration =>
            GoogleApi.DFAReporting.V33.Model.AdBlockingConfiguration.t(),
          :additionalCreativeOptimizationConfigurations =>
            list(GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration.t()),
          :advertiserGroupId => String.t(),
          :advertiserId => String.t(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :archived => boolean(),
          :audienceSegmentGroups =>
            list(GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup.t()),
          :billingInvoiceCode => String.t(),
          :clickThroughUrlSuffixProperties =>
            GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties.t(),
          :comment => String.t(),
          :createInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t(),
          :creativeGroupIds => list(String.t()),
          :creativeOptimizationConfiguration =>
            GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration.t(),
          :defaultClickThroughEventTagProperties =>
            GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties.t(),
          :defaultLandingPageId => String.t(),
          :endDate => Date.t(),
          :eventTagOverrides => list(GoogleApi.DFAReporting.V33.Model.EventTagOverride.t()),
          :externalId => String.t(),
          :id => String.t(),
          :idDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :kind => String.t(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t(),
          :name => String.t(),
          :nielsenOcrEnabled => boolean(),
          :startDate => Date.t(),
          :subaccountId => String.t(),
          :traffickerEmails => list(String.t())
        }

  field(:accountId)
  field(:adBlockingConfiguration, as: GoogleApi.DFAReporting.V33.Model.AdBlockingConfiguration)

  field(:additionalCreativeOptimizationConfigurations,
    as: GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration,
    type: :list
  )

  field(:advertiserGroupId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:archived)

  field(:audienceSegmentGroups,
    as: GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup,
    type: :list
  )

  field(:billingInvoiceCode)

  field(:clickThroughUrlSuffixProperties,
    as: GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties
  )

  field(:comment)
  field(:createInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:creativeGroupIds, type: :list)

  field(:creativeOptimizationConfiguration,
    as: GoogleApi.DFAReporting.V33.Model.CreativeOptimizationConfiguration
  )

  field(:defaultClickThroughEventTagProperties,
    as: GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties
  )

  field(:defaultLandingPageId)
  field(:endDate, as: Date)
  field(:eventTagOverrides, as: GoogleApi.DFAReporting.V33.Model.EventTagOverride, type: :list)
  field(:externalId)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:name)
  field(:nielsenOcrEnabled)
  field(:startDate, as: Date)
  field(:subaccountId)
  field(:traffickerEmails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.Campaign do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.Campaign.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.Campaign do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
