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

defmodule GoogleApi.ContainerAnalysis.V1.Model.NonCompliantFile do
  @moduledoc """
  Details about files that caused a compliance check to fail.

  ## Attributes

  *   `displayCommand` (*type:* `String.t`, *default:* `nil`) - Command to display the non-compliant files.
  *   `path` (*type:* `String.t`, *default:* `nil`) - display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Explains why a file is non compliant for a CIS check.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayCommand => String.t() | nil,
          :path => String.t() | nil,
          :reason => String.t() | nil
        }

  field(:displayCommand)
  field(:path)
  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.NonCompliantFile do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.NonCompliantFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.NonCompliantFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
