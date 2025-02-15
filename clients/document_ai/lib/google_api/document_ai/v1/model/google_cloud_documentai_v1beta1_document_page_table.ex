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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable do
  @moduledoc """
  A table representation similar to HTML table structure.

  ## Attributes

  *   `bodyRows` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.t)`, *default:* `nil`) - Body rows of the table.
  *   `detectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages together with confidence.
  *   `headerRows` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.t)`, *default:* `nil`) - Header rows of the table.
  *   `layout` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout.t`, *default:* `nil`) - Layout for Table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bodyRows =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.t()
            )
            | nil,
          :detectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.t()
            )
            | nil,
          :headerRows =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.t()
            )
            | nil,
          :layout =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout.t() | nil
        }

  field(:bodyRows,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow,
    type: :list
  )

  field(:detectedLanguages,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage,
    type: :list
  )

  field(:headerRows,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow,
    type: :list
  )

  field(:layout, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
