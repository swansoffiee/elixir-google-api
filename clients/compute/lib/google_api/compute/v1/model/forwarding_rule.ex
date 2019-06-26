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

defmodule GoogleApi.Compute.V1.Model.ForwardingRule do
  @moduledoc """
  A ForwardingRule resource. A ForwardingRule resource specifies which pool of target virtual machines to forward a packet to if it matches the given [IPAddress, IPProtocol, ports] tuple. (== resource_for beta.forwardingRules ==) (== resource_for v1.forwardingRules ==) (== resource_for beta.globalForwardingRules ==) (== resource_for v1.globalForwardingRules ==) (== resource_for beta.regionForwardingRules ==) (== resource_for v1.regionForwardingRules ==)

  ## Attributes

  *   `IPAddress` (*type:* `String.t`, *default:* `nil`) - The IP address that this forwarding rule is serving on behalf of.

      Addresses are restricted based on the forwarding rule's load balancing scheme (EXTERNAL or INTERNAL) and scope (global or regional).

      When the load balancing scheme is EXTERNAL, for global forwarding rules, the address must be a global IP, and for regional forwarding rules, the address must live in the same region as the forwarding rule. If this field is empty, an ephemeral IPv4 address from the same scope (global or regional) will be assigned. A regional forwarding rule supports IPv4 only. A global forwarding rule supports either IPv4 or IPv6.

      When the load balancing scheme is INTERNAL_SELF_MANAGED, this must be a URL reference to an existing Address resource ( internal regional static IP address), with a purpose of GCE_END_POINT and address_type of INTERNAL.

      When the load balancing scheme is INTERNAL, this can only be an RFC 1918 IP address belonging to the network/subnet configured for the forwarding rule. By default, if this field is empty, an ephemeral internal IP address will be automatically allocated from the IP range of the subnet or network configured for this forwarding rule.

      An address can be specified either by a literal IP address or a URL reference to an existing Address resource. The following examples are all valid:  
      - 100.1.2.3 
      - https://www.googleapis.com/compute/v1/projects/project/regions/region/addresses/address 
      - projects/project/regions/region/addresses/address 
      - regions/region/addresses/address 
      - global/addresses/address 
      - address
  *   `IPProtocol` (*type:* `String.t`, *default:* `nil`) - The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP, AH, SCTP or ICMP.

      When the load balancing scheme is INTERNAL, only TCP and UDP are valid. When the load balancing scheme is INTERNAL_SELF_MANAGED, only TCPis valid.
  *   `allPorts` (*type:* `boolean()`, *default:* `nil`) - This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. This field cannot be used with port or portRange fields.

      When the load balancing scheme is INTERNAL and protocol is TCP/UDP, specify this field to allow packets addressed to any ports will be forwarded to the backends configured with this forwarding rule.
  *   `backendService` (*type:* `String.t`, *default:* `nil`) - This field is only used for INTERNAL load balancing.

      For internal load balancing, this field identifies the BackendService resource to receive the matched traffic.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ipVersion` (*type:* `String.t`, *default:* `nil`) - The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6. This can only be specified for an external global forwarding rule.
  *   `kind` (*type:* `String.t`, *default:* `compute#forwardingRule`) - [Output Only] Type of the resource. Always compute#forwardingRule for Forwarding Rule resources.
  *   `loadBalancingScheme` (*type:* `String.t`, *default:* `nil`) - This signifies what the ForwardingRule will be used for and can only take the following values: INTERNAL, INTERNAL_SELF_MANAGED, EXTERNAL. The value of INTERNAL means that this will be used for Internal Network Load Balancing (TCP, UDP). The value of INTERNAL_SELF_MANAGED means that this will be used for Internal Global HTTP(S) LB. The value of EXTERNAL means that this will be used for External Load Balancing (HTTP(S) LB, External TCP/UDP LB, SSL Proxy)
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `network` (*type:* `String.t`, *default:* `nil`) - This field is not used for external load balancing.

      For INTERNAL and INTERNAL_SELF_MANAGED load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used.
  *   `networkTier` (*type:* `String.t`, *default:* `nil`) - This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM , STANDARD.

      For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM.

      If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  *   `portRange` (*type:* `String.t`, *default:* `nil`) - This field is used along with the target field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance.

      Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed to ports in the specified range will be forwarded to target. Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.

      Some types of forwarding target have constraints on the acceptable ports:  
      - TargetHttpProxy: 80, 8080 
      - TargetHttpsProxy: 443 
      - TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222 
      - TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222 
      - TargetVpnGateway: 500, 4500
  *   `ports` (*type:* `list(String.t)`, *default:* `nil`) - This field is used along with the backend_service field for internal load balancing.

      When the load balancing scheme is INTERNAL, a list of ports can be configured, for example, ['80'], ['8000','9000'] etc. Only packets addressed to these ports will be forwarded to the backends configured with this forwarding rule.

      You may specify a maximum of up to 5 ports.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional forwarding rule resides. This field is not applicable to global forwarding rules. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `serviceLabel` (*type:* `String.t`, *default:* `nil`) - An optional prefix to the service name for this Forwarding Rule. If specified, will be the first label of the fully qualified service name.

      The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

      This field is only used for internal load balancing.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - [Output Only] The internal fully qualified service name for this Forwarding Rule.

      This field is only used for internal load balancing.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - This field is only used for INTERNAL load balancing.

      For internal load balancing, this field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule.

      If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified.
  *   `target` (*type:* `String.t`, *default:* `nil`) - The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For INTERNAL_SELF_MANAGED load balancing, only HTTP and HTTPS targets are valid.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :IPAddress => String.t(),
          :IPProtocol => String.t(),
          :allPorts => boolean(),
          :backendService => String.t(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :ipVersion => String.t(),
          :kind => String.t(),
          :loadBalancingScheme => String.t(),
          :name => String.t(),
          :network => String.t(),
          :networkTier => String.t(),
          :portRange => String.t(),
          :ports => list(String.t()),
          :region => String.t(),
          :selfLink => String.t(),
          :serviceLabel => String.t(),
          :serviceName => String.t(),
          :subnetwork => String.t(),
          :target => String.t()
        }

  field(:IPAddress)
  field(:IPProtocol)
  field(:allPorts)
  field(:backendService)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:ipVersion)
  field(:kind)
  field(:loadBalancingScheme)
  field(:name)
  field(:network)
  field(:networkTier)
  field(:portRange)
  field(:ports, type: :list)
  field(:region)
  field(:selfLink)
  field(:serviceLabel)
  field(:serviceName)
  field(:subnetwork)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ForwardingRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
