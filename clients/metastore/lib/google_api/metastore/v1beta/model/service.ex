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

defmodule GoogleApi.Metastore.V1beta.Model.Service do
  @moduledoc """
  A managed metastore service that serves metadata queries.

  ## Attributes

  *   `artifactGcsUri` (*type:* `String.t`, *default:* `nil`) - Output only. A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore service was created.
  *   `encryptionConfig` (*type:* `GoogleApi.Metastore.V1beta.Model.EncryptionConfig.t`, *default:* `nil`) - Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  *   `endpointUri` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the endpoint used to access the metastore service.
  *   `hiveMetastoreConfig` (*type:* `GoogleApi.Metastore.V1beta.Model.HiveMetastoreConfig.t`, *default:* `nil`) - Configuration information specific to running Hive metastore software as the metastore service.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels for the metastore service.
  *   `maintenanceWindow` (*type:* `GoogleApi.Metastore.V1beta.Model.MaintenanceWindow.t`, *default:* `nil`) - The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  *   `metadataIntegration` (*type:* `GoogleApi.Metastore.V1beta.Model.MetadataIntegration.t`, *default:* `nil`) - The setting that defines how metastore metadata should be integrated with external services and systems.
  *   `metadataManagementActivity` (*type:* `GoogleApi.Metastore.V1beta.Model.MetadataManagementActivity.t`, *default:* `nil`) - Output only. The metadata management activities of the metastore service.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The relative resource name of the metastore service, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  *   `networkConfig` (*type:* `GoogleApi.Metastore.V1beta.Model.NetworkConfig.t`, *default:* `nil`) - Immutable. The configuration specifying the network settings for the Dataproc Metastore service.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The TCP port at which the metastore service is reached. Default: 9083.
  *   `releaseChannel` (*type:* `String.t`, *default:* `nil`) - Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the metastore service.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state of the metastore service, if available.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The tier of the service.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The globally unique resource identifier of the metastore service.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore service was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactGcsUri => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :encryptionConfig => GoogleApi.Metastore.V1beta.Model.EncryptionConfig.t() | nil,
          :endpointUri => String.t() | nil,
          :hiveMetastoreConfig => GoogleApi.Metastore.V1beta.Model.HiveMetastoreConfig.t() | nil,
          :labels => map() | nil,
          :maintenanceWindow => GoogleApi.Metastore.V1beta.Model.MaintenanceWindow.t() | nil,
          :metadataIntegration => GoogleApi.Metastore.V1beta.Model.MetadataIntegration.t() | nil,
          :metadataManagementActivity =>
            GoogleApi.Metastore.V1beta.Model.MetadataManagementActivity.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :networkConfig => GoogleApi.Metastore.V1beta.Model.NetworkConfig.t() | nil,
          :port => integer() | nil,
          :releaseChannel => String.t() | nil,
          :state => String.t() | nil,
          :stateMessage => String.t() | nil,
          :tier => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:artifactGcsUri)
  field(:createTime, as: DateTime)
  field(:encryptionConfig, as: GoogleApi.Metastore.V1beta.Model.EncryptionConfig)
  field(:endpointUri)
  field(:hiveMetastoreConfig, as: GoogleApi.Metastore.V1beta.Model.HiveMetastoreConfig)
  field(:labels, type: :map)
  field(:maintenanceWindow, as: GoogleApi.Metastore.V1beta.Model.MaintenanceWindow)
  field(:metadataIntegration, as: GoogleApi.Metastore.V1beta.Model.MetadataIntegration)

  field(:metadataManagementActivity,
    as: GoogleApi.Metastore.V1beta.Model.MetadataManagementActivity
  )

  field(:name)
  field(:network)
  field(:networkConfig, as: GoogleApi.Metastore.V1beta.Model.NetworkConfig)
  field(:port)
  field(:releaseChannel)
  field(:state)
  field(:stateMessage)
  field(:tier)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.Service do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
