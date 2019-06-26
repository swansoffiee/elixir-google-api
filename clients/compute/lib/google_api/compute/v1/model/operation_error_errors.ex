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

defmodule GoogleApi.Compute.V1.Model.OperationErrorErrors do
  @moduledoc """


  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - [Output Only] The error type identifier for this error.
  *   `location` (*type:* `String.t`, *default:* `nil`) - [Output Only] Indicates the field in the request that caused the error. This property is optional.
  *   `message` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable error message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :location => String.t(),
          :message => String.t()
        }

  field(:code)
  field(:location)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.OperationErrorErrors do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.OperationErrorErrors.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.OperationErrorErrors do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
