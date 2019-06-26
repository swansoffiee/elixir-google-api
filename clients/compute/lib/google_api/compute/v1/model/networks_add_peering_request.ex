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

defmodule GoogleApi.Compute.V1.Model.NetworksAddPeeringRequest do
  @moduledoc """


  ## Attributes

  *   `autoCreateRoutes` (*type:* `boolean()`, *default:* `nil`) - This field will be deprecated soon. Use exchange_subnet_routes in network_peering instead. Whether Google Compute Engine manages the routes automatically.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the peering, which should conform to RFC1035.
  *   `networkPeering` (*type:* `GoogleApi.Compute.V1.Model.NetworkPeering.t`, *default:* `nil`) - Network peering parameters. In order to specify route policies for peering using import and export custom routes, you must specify all peering related parameters (name, peer network, exchange_subnet_routes) in the network_peering field. The corresponding fields in NetworksAddPeeringRequest will be deprecated soon.
  *   `peerNetwork` (*type:* `String.t`, *default:* `nil`) - URL of the peer network. It can be either full URL or partial URL. The peer network may belong to a different project. If the partial URL does not contain project, it is assumed that the peer network is in the same project as the current network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCreateRoutes => boolean(),
          :name => String.t(),
          :networkPeering => GoogleApi.Compute.V1.Model.NetworkPeering.t(),
          :peerNetwork => String.t()
        }

  field(:autoCreateRoutes)
  field(:name)
  field(:networkPeering, as: GoogleApi.Compute.V1.Model.NetworkPeering)
  field(:peerNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworksAddPeeringRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworksAddPeeringRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworksAddPeeringRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
