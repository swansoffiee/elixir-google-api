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

defmodule GoogleApi.Compute.V1.Model.AcceleratorType do
  @moduledoc """
  Represents an Accelerator Type resource.

  Google Cloud Platform provides graphics processing units (accelerators) that you can add to VM instances to improve or accelerate performance when working with intensive workloads. For more information, read GPUs on Compute Engine. (== resource_for beta.acceleratorTypes ==) (== resource_for v1.acceleratorTypes ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `deprecated` (*type:* `GoogleApi.Compute.V1.Model.DeprecationStatus.t`, *default:* `nil`) - [Output Only] The deprecation status associated with this accelerator type.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional textual description of the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#acceleratorType`) - [Output Only] The type of the resource. Always compute#acceleratorType for accelerator types.
  *   `maximumCardsPerInstance` (*type:* `integer()`, *default:* `nil`) - [Output Only] Maximum accelerator cards allowed per instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined fully-qualified URL for this resource.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the zone where the accelerator type resides, such as us-central1-a. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :deprecated => GoogleApi.Compute.V1.Model.DeprecationStatus.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :maximumCardsPerInstance => integer(),
          :name => String.t(),
          :selfLink => String.t(),
          :zone => String.t()
        }

  field(:creationTimestamp)
  field(:deprecated, as: GoogleApi.Compute.V1.Model.DeprecationStatus)
  field(:description)
  field(:id)
  field(:kind)
  field(:maximumCardsPerInstance)
  field(:name)
  field(:selfLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AcceleratorType do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AcceleratorType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AcceleratorType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
