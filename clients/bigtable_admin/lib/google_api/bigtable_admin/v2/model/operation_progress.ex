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

defmodule GoogleApi.BigtableAdmin.V2.Model.OperationProgress do
  @moduledoc """
  Encapsulates progress related information for a Cloud Bigtable long running operation.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - If set, the time at which this operation failed or was completed successfully.
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Percent completion of the operation. Values are between 0 and 100 inclusive.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time the request was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :progressPercent => integer(),
          :startTime => DateTime.t()
        }

  field(:endTime, as: DateTime)
  field(:progressPercent)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.OperationProgress do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.OperationProgress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.OperationProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
