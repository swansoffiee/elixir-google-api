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

defmodule GoogleApi.Compute.V1.Model.InstancesSetServiceAccountRequest do
  @moduledoc """


  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - Email address of the service account.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - The list of scopes to be made available for this service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :scopes => list(String.t())
        }

  field(:email)
  field(:scopes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancesSetServiceAccountRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancesSetServiceAccountRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancesSetServiceAccountRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
