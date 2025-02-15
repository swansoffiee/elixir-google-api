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

defmodule GoogleApi.DFAReporting.V35.Model.OptimizationActivity do
  @moduledoc """
  Creative optimization activity.

  ## Attributes

  *   `floodlightActivityId` (*type:* `String.t`, *default:* `nil`) - Floodlight activity ID of this optimization activity. This is a required field.
  *   `floodlightActivityIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the floodlight activity. This is a read-only, auto-generated field.
  *   `weight` (*type:* `integer()`, *default:* `nil`) - Weight associated with this optimization. The weight assigned will be understood in proportion to the weights assigned to the other optimization activities. Value must be greater than or equal to 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floodlightActivityId => String.t() | nil,
          :floodlightActivityIdDimensionValue =>
            GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :weight => integer() | nil
        }

  field(:floodlightActivityId)
  field(:floodlightActivityIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.OptimizationActivity do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.OptimizationActivity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.OptimizationActivity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
