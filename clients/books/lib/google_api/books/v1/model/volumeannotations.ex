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

defmodule GoogleApi.Books.V1.Model.Volumeannotations do
  @moduledoc """


  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Books.V1.Model.Volumeannotation.t)`, *default:* `nil`) - A list of volume annotations.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Resource type
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to pass in for pagination for the next page. This will not be present if this request does not have more results.
  *   `totalItems` (*type:* `integer()`, *default:* `nil`) - The total number of volume annotations found.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn't apply to the annotation data, just the information in this response (e.g. the location of annotations in the book).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Books.V1.Model.Volumeannotation.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :totalItems => integer() | nil,
          :version => String.t() | nil
        }

  field(:items, as: GoogleApi.Books.V1.Model.Volumeannotation, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:totalItems)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Volumeannotations do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Volumeannotations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Volumeannotations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
