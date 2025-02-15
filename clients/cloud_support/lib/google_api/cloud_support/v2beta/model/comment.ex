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

defmodule GoogleApi.CloudSupport.V2beta.Model.Comment do
  @moduledoc """
  A comment associated with a support case.

  ## Attributes

  *   `body` (*type:* `String.t`, *default:* `nil`) - The full comment body. Maximum of 120000 characters. This can contain rich text syntax.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when this comment was created.
  *   `creator` (*type:* `GoogleApi.CloudSupport.V2beta.Model.Actor.t`, *default:* `nil`) - Output only. The user or Google Support agent created this comment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for the comment.
  *   `plainTextBody` (*type:* `String.t`, *default:* `nil`) - Output only. An automatically generated plain text version of body with all rich text syntax stripped.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :creator => GoogleApi.CloudSupport.V2beta.Model.Actor.t() | nil,
          :name => String.t() | nil,
          :plainTextBody => String.t() | nil
        }

  field(:body)
  field(:createTime, as: DateTime)
  field(:creator, as: GoogleApi.CloudSupport.V2beta.Model.Actor)
  field(:name)
  field(:plainTextBody)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.Comment do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.Comment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.Comment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
