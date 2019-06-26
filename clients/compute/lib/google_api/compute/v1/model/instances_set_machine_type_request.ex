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

defmodule GoogleApi.Compute.V1.Model.InstancesSetMachineTypeRequest do
  @moduledoc """


  ## Attributes

  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Full or partial URL of the machine type resource. See Machine Types for a full list of machine types. For example: zones/us-central1-f/machineTypes/n1-standard-1
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineType => String.t()
        }

  field(:machineType)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancesSetMachineTypeRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancesSetMachineTypeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancesSetMachineTypeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
