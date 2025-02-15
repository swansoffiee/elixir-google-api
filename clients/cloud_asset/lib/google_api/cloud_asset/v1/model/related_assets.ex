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

defmodule GoogleApi.CloudAsset.V1.Model.RelatedAssets do
  @moduledoc """
  The detailed related assets with the `relationship_type`.

  ## Attributes

  *   `assets` (*type:* `list(GoogleApi.CloudAsset.V1.Model.RelatedAsset.t)`, *default:* `nil`) - The peer resources of the relationship.
  *   `relationshipAttributes` (*type:* `GoogleApi.CloudAsset.V1.Model.RelationshipAttributes.t`, *default:* `nil`) - The detailed relationship attributes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assets => list(GoogleApi.CloudAsset.V1.Model.RelatedAsset.t()) | nil,
          :relationshipAttributes =>
            GoogleApi.CloudAsset.V1.Model.RelationshipAttributes.t() | nil
        }

  field(:assets, as: GoogleApi.CloudAsset.V1.Model.RelatedAsset, type: :list)
  field(:relationshipAttributes, as: GoogleApi.CloudAsset.V1.Model.RelationshipAttributes)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.RelatedAssets do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.RelatedAssets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.RelatedAssets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
