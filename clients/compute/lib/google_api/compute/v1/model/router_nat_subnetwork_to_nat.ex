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

defmodule GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat do
  @moduledoc """
  Defines the IP ranges that want to use NAT for a subnetwork.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - URL for the subnetwork resource that will use NAT.
  *   `secondaryIpRangeNames` (*type:* `list(String.t)`, *default:* `nil`) - A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  *   `sourceIpRangesToNat` (*type:* `list(String.t)`, *default:* `nil`) - Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :secondaryIpRangeNames => list(String.t()),
          :sourceIpRangesToNat => list(String.t())
        }

  field(:name)
  field(:secondaryIpRangeNames, type: :list)
  field(:sourceIpRangesToNat, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
