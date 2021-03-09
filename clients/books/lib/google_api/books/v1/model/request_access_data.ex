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

defmodule GoogleApi.Books.V1.Model.RequestAccessData do
  @moduledoc """


  ## Attributes

  *   `concurrentAccess` (*type:* `GoogleApi.Books.V1.Model.ConcurrentAccessRestriction.t`, *default:* `nil`) - A concurrent access response.
  *   `downloadAccess` (*type:* `GoogleApi.Books.V1.Model.DownloadAccessRestriction.t`, *default:* `nil`) - A download access response.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Resource type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :concurrentAccess => GoogleApi.Books.V1.Model.ConcurrentAccessRestriction.t() | nil,
          :downloadAccess => GoogleApi.Books.V1.Model.DownloadAccessRestriction.t() | nil,
          :kind => String.t() | nil
        }

  field(:concurrentAccess, as: GoogleApi.Books.V1.Model.ConcurrentAccessRestriction)
  field(:downloadAccess, as: GoogleApi.Books.V1.Model.DownloadAccessRestriction)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.RequestAccessData do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.RequestAccessData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.RequestAccessData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
