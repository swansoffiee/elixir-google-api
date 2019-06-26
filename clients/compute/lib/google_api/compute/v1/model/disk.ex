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

defmodule GoogleApi.Compute.V1.Model.Disk do
  @moduledoc """
  Represents a Persistent Disk resource.

  Persistent disks are required for running your VM instances. Create both boot and non-boot (data) persistent disks. For more information, read Persistent Disks. For more storage options, read Storage options.

  The disks resource represents a zonal persistent disk. For more information, read Zonal persistent disks.

  The regionDisks resource represents a regional persistent disk. For more information, read  Regional resources. (== resource_for beta.disks ==) (== resource_for v1.disks ==) (== resource_for v1.regionDisks ==) (== resource_for beta.regionDisks ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `diskEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Encrypts the disk using a customer-supplied encryption key.

      After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later (e.g. to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine).

      Customer-supplied encryption keys do not protect access to metadata of the disk.

      If you do not provide an encryption key when creating the disk, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.
  *   `guestOsFeatures` (*type:* `list(GoogleApi.Compute.V1.Model.GuestOsFeature.t)`, *default:* `nil`) - A list of features to enable on the guest operating system. Applicable only for bootable images. Read  Enabling guest operating system features to see a list of available options.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#disk`) - [Output Only] Type of the resource. Always compute#disk for disks.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this disk, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve a disk.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this disk. These can be later modified by the setLabels method.
  *   `lastAttachTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Last attach timestamp in RFC3339 text format.
  *   `lastDetachTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Last detach timestamp in RFC3339 text format.
  *   `licenseCodes` (*type:* `list(String.t)`, *default:* `nil`) - Integer license codes indicating which licenses are attached to this disk.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - A list of publicly visible licenses. Reserved for Google's use.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `options` (*type:* `String.t`, *default:* `nil`) - Internal use only.
  *   `physicalBlockSizeBytes` (*type:* `String.t`, *default:* `nil`) - Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. Currently supported sizes are 4096 and 16384, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the disk resides. Only applicable for regional resources. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `replicaZones` (*type:* `list(String.t)`, *default:* `nil`) - URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  *   `resourcePolicies` (*type:* `list(String.t)`, *default:* `nil`) - Resource policies applied to this disk for automatic snapshot creations.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined fully-qualified URL for this resource.
  *   `sizeGb` (*type:* `String.t`, *default:* `nil`) - Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk.

      If you specify this field along with sourceImage or sourceSnapshot, the value of sizeGb must not be less than the size of the sourceImage or the size of the snapshot. Acceptable values are 1 to 65536, inclusive.
  *   `sourceImage` (*type:* `String.t`, *default:* `nil`) - The source image used to create this disk. If the source image is deleted, this field will not be set.

      To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image:
      projects/debian-cloud/global/images/family/debian-9


      Alternatively, use a specific version of a public operating system image:
      projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD


      To create a disk with a custom image that you created, specify the image name in the following format:
      global/images/my-custom-image


      You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name:
      global/images/family/my-image-family
  *   `sourceImageEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  *   `sourceImageId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The ID value of the image used to create this disk. This value identifies the exact image that was used to create this persistent disk. For example, if you created the persistent disk from an image that was later deleted and recreated under the same name, the source image ID would identify the exact version of the image that was used.
  *   `sourceSnapshot` (*type:* `String.t`, *default:* `nil`) - The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values:  
      - https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot 
      - projects/project/global/snapshots/snapshot 
      - global/snapshots/snapshot
  *   `sourceSnapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  *   `sourceSnapshotId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique ID of the snapshot used to create this disk. This value identifies the exact snapshot that was used to create this persistent disk. For example, if you created the persistent disk from a snapshot that was later deleted and recreated under the same name, the source snapshot ID would identify the exact version of the snapshot that was used.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of disk creation.
  *   `type` (*type:* `String.t`, *default:* `nil`) - URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project/zones/zone/diskTypes/pd-standard or pd-ssd
  *   `users` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Links to the users of the disk (attached instances) in form: projects/project/zones/zone/instances/instance
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the zone where the disk resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :diskEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :guestOsFeatures => list(GoogleApi.Compute.V1.Model.GuestOsFeature.t()),
          :id => String.t(),
          :kind => String.t(),
          :labelFingerprint => String.t(),
          :labels => map(),
          :lastAttachTimestamp => String.t(),
          :lastDetachTimestamp => String.t(),
          :licenseCodes => list(String.t()),
          :licenses => list(String.t()),
          :name => String.t(),
          :options => String.t(),
          :physicalBlockSizeBytes => String.t(),
          :region => String.t(),
          :replicaZones => list(String.t()),
          :resourcePolicies => list(String.t()),
          :selfLink => String.t(),
          :sizeGb => String.t(),
          :sourceImage => String.t(),
          :sourceImageEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :sourceImageId => String.t(),
          :sourceSnapshot => String.t(),
          :sourceSnapshotEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :sourceSnapshotId => String.t(),
          :status => String.t(),
          :type => String.t(),
          :users => list(String.t()),
          :zone => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:diskEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:guestOsFeatures, as: GoogleApi.Compute.V1.Model.GuestOsFeature, type: :list)
  field(:id)
  field(:kind)
  field(:labelFingerprint)
  field(:labels, type: :map)
  field(:lastAttachTimestamp)
  field(:lastDetachTimestamp)
  field(:licenseCodes, type: :list)
  field(:licenses, type: :list)
  field(:name)
  field(:options)
  field(:physicalBlockSizeBytes)
  field(:region)
  field(:replicaZones, type: :list)
  field(:resourcePolicies, type: :list)
  field(:selfLink)
  field(:sizeGb)
  field(:sourceImage)
  field(:sourceImageEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceImageId)
  field(:sourceSnapshot)
  field(:sourceSnapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceSnapshotId)
  field(:status)
  field(:type)
  field(:users, type: :list)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Disk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Disk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Disk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
