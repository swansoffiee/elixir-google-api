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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2LogFile do
  @moduledoc """
  A `LogFile` is a log stored in the CAS.

  ## Attributes

  *   `digest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the log contents.
  *   `humanReadable` (*type:* `boolean()`, *default:* `nil`) - This is a hint as to the purpose of the log, and is set to true if the log is human-readable text that can be usefully displayed to a user, and false otherwise. For instance, if a command-line client wishes to print the server logs to the terminal for a failed action, this allows it to avoid displaying a binary file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :digest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t(),
          :humanReadable => boolean()
        }

  field(:digest, as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest)
  field(:humanReadable)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2LogFile do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2LogFile.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2LogFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
