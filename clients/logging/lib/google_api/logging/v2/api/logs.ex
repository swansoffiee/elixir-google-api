# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Logging.V2.Api.Logs do
  @moduledoc """
  API calls for all endpoints tagged `Logs`.
  """

  alias GoogleApi.Logging.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes all the log entries in a log. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;logName&#x60;. Required. The resource name of the log to delete: \&quot;projects/[PROJECT_ID]/logs/[LOG_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/logs/[LOG_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]\&quot; \&quot;folders/[FOLDER_ID]/logs/[LOG_ID]\&quot; [LOG_ID] must be URL-encoded. For example, \&quot;projects/my-project-id/logs/syslog\&quot;, \&quot;organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity\&quot;. For more information about log names, see LogEntry.
  - v2_id1 (String.t): Part of &#x60;logName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - logs_id (String.t): Part of &#x60;logName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec logging_logs_delete(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def logging_logs_delete(connection, v2_id, v2_id1, logs_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v2/{v2Id}/{v2Id1}/logs/{logsId}", %{
        "v2Id" => URI.encode_www_form(v2_id),
        "v2Id1" => URI.encode_www_form(v2_id1),
        "logsId" => URI.encode_www_form(logs_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.Empty{}])
  end

  @doc """
  Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;parent&#x60;. Required. The resource name that owns the logs: \&quot;projects/[PROJECT_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]\&quot; \&quot;folders/[FOLDER_ID]\&quot; 
  - v2_id1 (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    - :pageToken (String.t): Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.ListLogsResponse{}} on success
  {:error, info} on failure
  """
  @spec logging_logs_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.ListLogsResponse.t()} | {:error, Tesla.Env.t()}
  def logging_logs_list(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/logs", %{
        "v2Id" => URI.encode_www_form(v2_id),
        "v2Id1" => URI.encode_www_form(v2_id1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.ListLogsResponse{}])
  end
end
