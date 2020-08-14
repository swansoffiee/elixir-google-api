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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2FileMetadata do
  @moduledoc """
  The metadata for a file. Similar to the equivalent message in the Remote Execution API.

  ## Attributes

  *   `contents` (*type:* `String.t`, *default:* `nil`) - If the file is small enough, its contents may also or alternatively be listed here.
  *   `digest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t`, *default:* `nil`) - A pointer to the contents of the file. The method by which a client retrieves the contents from a CAS system is not defined here.
  *   `isExecutable` (*type:* `boolean()`, *default:* `nil`) - Properties of the file
  *   `path` (*type:* `String.t`, *default:* `nil`) - The path of this file. If this message is part of the CommandOutputs.outputs fields, the path is relative to the execution root and must correspond to an entry in CommandTask.outputs.files. If this message is part of a Directory message, then the path is relative to the root of that directory. All paths MUST be delimited by forward slashes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents => String.t(),
          :digest =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t(),
          :isExecutable => boolean(),
          :path => String.t()
        }

  field(:contents)

  field(:digest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest
  )

  field(:isExecutable)
  field(:path)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2FileMetadata do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2FileMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2FileMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
