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

defmodule GoogleApi.Compute.V1.Model.AutoscalersScopedList do
  @moduledoc """


  ## Attributes

  *   `autoscalers` (*type:* `list(GoogleApi.Compute.V1.Model.Autoscaler.t)`, *default:* `nil`) - [Output Only] A list of autoscalers contained in this scope.
  *   `warning` (*type:* `GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning.t`, *default:* `nil`) - [Output Only] Informational warning which replaces the list of autoscalers when the list is empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalers => list(GoogleApi.Compute.V1.Model.Autoscaler.t()),
          :warning => GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning.t()
        }

  field(:autoscalers, as: GoogleApi.Compute.V1.Model.Autoscaler, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalersScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalersScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalersScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
