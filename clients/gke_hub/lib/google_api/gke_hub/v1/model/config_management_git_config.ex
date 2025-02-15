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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig do
  @moduledoc """
  Git repo configuration for a single cluster.

  ## Attributes

  *   `gcpServiceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The GCP Service Account Email used for auth when secret_type is gcpServiceAccount.
  *   `httpsProxy` (*type:* `String.t`, *default:* `nil`) - URL for the HTTPS proxy to be used when communicating with the Git repo.
  *   `policyDir` (*type:* `String.t`, *default:* `nil`) - The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  *   `secretType` (*type:* `String.t`, *default:* `nil`) - Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  *   `syncBranch` (*type:* `String.t`, *default:* `nil`) - The branch of the repository to sync from. Default: master.
  *   `syncRepo` (*type:* `String.t`, *default:* `nil`) - The URL of the Git repository to use as the source of truth.
  *   `syncRev` (*type:* `String.t`, *default:* `nil`) - Git revision (tag or hash) to check out. Default HEAD.
  *   `syncWaitSecs` (*type:* `String.t`, *default:* `nil`) - Period in seconds between consecutive syncs. Default: 15.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcpServiceAccountEmail => String.t() | nil,
          :httpsProxy => String.t() | nil,
          :policyDir => String.t() | nil,
          :secretType => String.t() | nil,
          :syncBranch => String.t() | nil,
          :syncRepo => String.t() | nil,
          :syncRev => String.t() | nil,
          :syncWaitSecs => String.t() | nil
        }

  field(:gcpServiceAccountEmail)
  field(:httpsProxy)
  field(:policyDir)
  field(:secretType)
  field(:syncBranch)
  field(:syncRepo)
  field(:syncRev)
  field(:syncWaitSecs)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
