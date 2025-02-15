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

defmodule GoogleApi.SQLAdmin.V1.Model.AclEntry do
  @moduledoc """
  An entry for an Access Control list.

  ## Attributes

  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#aclEntry**.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. A label to identify this entry.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The allowlisted value for the access control list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationTime => DateTime.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :value => String.t() | nil
        }

  field(:expirationTime, as: DateTime)
  field(:kind)
  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.AclEntry do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.AclEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.AclEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
