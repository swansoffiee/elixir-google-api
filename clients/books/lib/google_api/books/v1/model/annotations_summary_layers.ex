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

defmodule GoogleApi.Books.V1.Model.AnnotationsSummaryLayers do
  @moduledoc """


  ## Attributes

  *   `allowedCharacterCount` (*type:* `integer()`, *default:* `nil`) - 
  *   `layerId` (*type:* `String.t`, *default:* `nil`) - 
  *   `limitType` (*type:* `String.t`, *default:* `nil`) - 
  *   `remainingCharacterCount` (*type:* `integer()`, *default:* `nil`) - 
  *   `updated` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedCharacterCount => integer() | nil,
          :layerId => String.t() | nil,
          :limitType => String.t() | nil,
          :remainingCharacterCount => integer() | nil,
          :updated => String.t() | nil
        }

  field(:allowedCharacterCount)
  field(:layerId)
  field(:limitType)
  field(:remainingCharacterCount)
  field(:updated)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.AnnotationsSummaryLayers do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.AnnotationsSummaryLayers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.AnnotationsSummaryLayers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
