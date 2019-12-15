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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.ActingUser do
  @moduledoc """
  Contains metadata about the user who performed an action, such as creating
  a release or finalizing a version.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - The email address of the user when the user performed the action.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - A profile image URL for the user. May not be present if the user has
      changed their email address or deleted their account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :imageUrl => String.t()
        }

  field(:email)
  field(:imageUrl)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ActingUser do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.ActingUser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ActingUser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
