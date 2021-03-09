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

defmodule GoogleApi.Books.V1.Model.DiscoveryclustersClusters do
  @moduledoc """


  ## Attributes

  *   `banner_with_content_container` (*type:* `GoogleApi.Books.V1.Model.DiscoveryclustersClustersBannerWithContentContainer.t`, *default:* `nil`) - 
  *   `subTitle` (*type:* `String.t`, *default:* `nil`) - 
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  *   `totalVolumes` (*type:* `integer()`, *default:* `nil`) - 
  *   `uid` (*type:* `String.t`, *default:* `nil`) - 
  *   `volumes` (*type:* `list(GoogleApi.Books.V1.Model.Volume.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :banner_with_content_container =>
            GoogleApi.Books.V1.Model.DiscoveryclustersClustersBannerWithContentContainer.t() | nil,
          :subTitle => String.t() | nil,
          :title => String.t() | nil,
          :totalVolumes => integer() | nil,
          :uid => String.t() | nil,
          :volumes => list(GoogleApi.Books.V1.Model.Volume.t()) | nil
        }

  field(:banner_with_content_container,
    as: GoogleApi.Books.V1.Model.DiscoveryclustersClustersBannerWithContentContainer
  )

  field(:subTitle)
  field(:title)
  field(:totalVolumes)
  field(:uid)
  field(:volumes, as: GoogleApi.Books.V1.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.DiscoveryclustersClusters do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.DiscoveryclustersClusters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.DiscoveryclustersClusters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
