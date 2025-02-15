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

defmodule GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances do
  @moduledoc """
  A collection of router appliance instances. If you have multiple router appliance instances connected to the same site, they should all be attached to the same spoke.

  ## Attributes

  *   `instances` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.RouterApplianceInstance.t)`, *default:* `nil`) - The list of router appliance instances.
  *   `siteToSiteDataTransfer` (*type:* `boolean()`, *default:* `nil`) - A value that controls whether site-to-site data transfer is enabled for these resources. This field is set to false by default, but you must set it to true. Note that data transfer is available only in supported locations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances =>
            list(GoogleApi.NetworkConnectivity.V1.Model.RouterApplianceInstance.t()) | nil,
          :siteToSiteDataTransfer => boolean() | nil
        }

  field(:instances,
    as: GoogleApi.NetworkConnectivity.V1.Model.RouterApplianceInstance,
    type: :list
  )

  field(:siteToSiteDataTransfer)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
