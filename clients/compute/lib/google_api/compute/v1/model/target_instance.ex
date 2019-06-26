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

defmodule GoogleApi.Compute.V1.Model.TargetInstance do
  @moduledoc """
  Represents a Target Instance resource.

  You can use a target instance to handle traffic for one or more forwarding rules, which is ideal for forwarding protocol traffic that is managed by a single source. For example, ESP, AH, TCP, or UDP. For more information, read Target instances. (== resource_for beta.targetInstances ==) (== resource_for v1.targetInstances ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: 
      - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance 
      - projects/project/zones/zone/instances/instance 
      - zones/zone/instances/instance
  *   `kind` (*type:* `String.t`, *default:* `compute#targetInstance`) - [Output Only] The type of the resource. Always compute#targetInstance for target instances.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `natPolicy` (*type:* `String.t`, *default:* `nil`) - NAT option controlling how IPs are NAT'ed to the instance. Currently only NO_NAT (default value) is supported.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the zone where the target instance resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :instance => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :natPolicy => String.t(),
          :selfLink => String.t(),
          :zone => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:instance)
  field(:kind)
  field(:name)
  field(:natPolicy)
  field(:selfLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetInstance do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
