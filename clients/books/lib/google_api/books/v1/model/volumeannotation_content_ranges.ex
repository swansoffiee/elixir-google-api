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

defmodule GoogleApi.Books.V1.Model.VolumeannotationContentRanges do
  @moduledoc """
  The content ranges to identify the selected text.

  ## Attributes

  *   `cfiRange` (*type:* `GoogleApi.Books.V1.Model.BooksAnnotationsRange.t`, *default:* `nil`) - Range in CFI format for this annotation for version above.
  *   `contentVersion` (*type:* `String.t`, *default:* `nil`) - Content version applicable to ranges below.
  *   `gbImageRange` (*type:* `GoogleApi.Books.V1.Model.BooksAnnotationsRange.t`, *default:* `nil`) - Range in GB image format for this annotation for version above.
  *   `gbTextRange` (*type:* `GoogleApi.Books.V1.Model.BooksAnnotationsRange.t`, *default:* `nil`) - Range in GB text format for this annotation for version above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cfiRange => GoogleApi.Books.V1.Model.BooksAnnotationsRange.t() | nil,
          :contentVersion => String.t() | nil,
          :gbImageRange => GoogleApi.Books.V1.Model.BooksAnnotationsRange.t() | nil,
          :gbTextRange => GoogleApi.Books.V1.Model.BooksAnnotationsRange.t() | nil
        }

  field(:cfiRange, as: GoogleApi.Books.V1.Model.BooksAnnotationsRange)
  field(:contentVersion)
  field(:gbImageRange, as: GoogleApi.Books.V1.Model.BooksAnnotationsRange)
  field(:gbTextRange, as: GoogleApi.Books.V1.Model.BooksAnnotationsRange)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeannotationContentRanges do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeannotationContentRanges.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeannotationContentRanges do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
