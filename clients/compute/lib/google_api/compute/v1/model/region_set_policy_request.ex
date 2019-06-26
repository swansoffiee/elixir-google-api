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

defmodule GoogleApi.Compute.V1.Model.RegionSetPolicyRequest do
  @moduledoc """


  ## Attributes

  *   `bindings` (*type:* `list(GoogleApi.Compute.V1.Model.Binding.t)`, *default:* `nil`) - Flatten Policy to create a backwacd compatible wire-format. Deprecated. Use 'policy' to specify bindings.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Flatten Policy to create a backward compatible wire-format. Deprecated. Use 'policy' to specify the etag.
  *   `policy` (*type:* `GoogleApi.Compute.V1.Model.Policy.t`, *default:* `nil`) - REQUIRED: The complete policy to be applied to the 'resource'. The size of the policy is limited to a few 10s of KB. An empty policy is in general a valid policy but certain services (like Projects) might reject them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bindings => list(GoogleApi.Compute.V1.Model.Binding.t()),
          :etag => String.t(),
          :policy => GoogleApi.Compute.V1.Model.Policy.t()
        }

  field(:bindings, as: GoogleApi.Compute.V1.Model.Binding, type: :list)
  field(:etag)
  field(:policy, as: GoogleApi.Compute.V1.Model.Policy)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RegionSetPolicyRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RegionSetPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RegionSetPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
