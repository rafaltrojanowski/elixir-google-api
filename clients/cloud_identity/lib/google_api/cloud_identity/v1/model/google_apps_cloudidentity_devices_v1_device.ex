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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1Device do
  @moduledoc """
   A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user.

  ## Attributes

  *   `androidSpecificAttributes` (*type:* `GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes.t`, *default:* `nil`) - Output only. Attributes specific to Android devices.
  *   `assetTag` (*type:* `String.t`, *default:* `nil`) - Asset tag of the device.
  *   `basebandVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Baseband version of the device.
  *   `bootloaderVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Device bootloader version. Example: 0.6.7.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Output only. Device brand. Example: Samsung.
  *   `buildNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Build number of the device.
  *   `compromisedState` (*type:* `String.t`, *default:* `nil`) - Output only. Represents whether the Device is compromised.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the Company-Owned device was imported. This field is empty for BYOD devices.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of device.
  *   `enabledDeveloperOptions` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether developer options is enabled on device.
  *   `enabledUsbDebugging` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether USB debugging is enabled on device.
  *   `encryptionState` (*type:* `String.t`, *default:* `nil`) - Output only. Device encryption state.
  *   `imei` (*type:* `String.t`, *default:* `nil`) - Output only. IMEI number of device if GSM device; empty otherwise.
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Kernel version of the device.
  *   `lastSyncTime` (*type:* `DateTime.t`, *default:* `nil`) - Most recent time when device synced with this service.
  *   `managementState` (*type:* `String.t`, *default:* `nil`) - Output only. Management state of the device
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Output only. Device manufacturer. Example: Motorola.
  *   `meid` (*type:* `String.t`, *default:* `nil`) - Output only. MEID number of device if CDMA device; empty otherwise.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Output only. Model name of device. Example: Pixel 3.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.
  *   `networkOperator` (*type:* `String.t`, *default:* `nil`) - Output only. Mobile or network operator of device, if available.
  *   `osVersion` (*type:* `String.t`, *default:* `nil`) - Output only. OS version of the device. Example: Android 8.1.0.
  *   `otherAccounts` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  *   `ownerType` (*type:* `String.t`, *default:* `nil`) - Output only. Whether the device is owned by the company or an individual
  *   `releaseVersion` (*type:* `String.t`, *default:* `nil`) - Output only. OS release version. Example: 6.0.
  *   `securityPatchTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. OS security patch update time on device.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Serial Number of device. Example: HT82V1A01076.
  *   `wifiMacAddresses` (*type:* `list(String.t)`, *default:* `nil`) - WiFi MAC addresses of device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidSpecificAttributes =>
            GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes.t()
            | nil,
          :assetTag => String.t() | nil,
          :basebandVersion => String.t() | nil,
          :bootloaderVersion => String.t() | nil,
          :brand => String.t() | nil,
          :buildNumber => String.t() | nil,
          :compromisedState => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :deviceType => String.t() | nil,
          :enabledDeveloperOptions => boolean() | nil,
          :enabledUsbDebugging => boolean() | nil,
          :encryptionState => String.t() | nil,
          :imei => String.t() | nil,
          :kernelVersion => String.t() | nil,
          :lastSyncTime => DateTime.t() | nil,
          :managementState => String.t() | nil,
          :manufacturer => String.t() | nil,
          :meid => String.t() | nil,
          :model => String.t() | nil,
          :name => String.t() | nil,
          :networkOperator => String.t() | nil,
          :osVersion => String.t() | nil,
          :otherAccounts => list(String.t()) | nil,
          :ownerType => String.t() | nil,
          :releaseVersion => String.t() | nil,
          :securityPatchTime => DateTime.t() | nil,
          :serialNumber => String.t() | nil,
          :wifiMacAddresses => list(String.t()) | nil
        }

  field(:androidSpecificAttributes,
    as: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes
  )

  field(:assetTag)
  field(:basebandVersion)
  field(:bootloaderVersion)
  field(:brand)
  field(:buildNumber)
  field(:compromisedState)
  field(:createTime, as: DateTime)
  field(:deviceType)
  field(:enabledDeveloperOptions)
  field(:enabledUsbDebugging)
  field(:encryptionState)
  field(:imei)
  field(:kernelVersion)
  field(:lastSyncTime, as: DateTime)
  field(:managementState)
  field(:manufacturer)
  field(:meid)
  field(:model)
  field(:name)
  field(:networkOperator)
  field(:osVersion)
  field(:otherAccounts, type: :list)
  field(:ownerType)
  field(:releaseVersion)
  field(:securityPatchTime, as: DateTime)
  field(:serialNumber)
  field(:wifiMacAddresses, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1Device do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1Device.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
