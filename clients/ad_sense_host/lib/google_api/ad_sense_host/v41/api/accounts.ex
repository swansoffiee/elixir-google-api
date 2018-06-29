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

defmodule GoogleApi.AdSenseHost.V41.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Get information about one of the ad clients in the specified publisher&#39;s AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad client.
  - ad_client_id (String.t): Ad client to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdClient{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adclients_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClient.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adclients_get(connection, account_id, ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdClient{})
  end

  @doc """
  List all hosted ad clients in the specified hosted account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account for which to list ad clients.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of ad clients to include in the response, used for paging.
    - :pageToken (String.t): A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdClients{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adclients_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClients.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adclients_list(connection, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients", %{
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdClients{})
  end

  @doc """
  Delete the specified ad unit from the specified publisher AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad unit.
  - ad_client_id (String.t): Ad client for which to get ad unit.
  - ad_unit_id (String.t): Ad unit to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_delete(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
        opts \\ []
      ) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id),
        "adUnitId" => URI.encode_www_form(ad_unit_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{})
  end

  @doc """
  Get the specified host ad unit in this AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad unit.
  - ad_client_id (String.t): Ad client for which to get ad unit.
  - ad_unit_id (String.t): Ad unit to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_get(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
        opts \\ []
      ) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id),
        "adUnitId" => URI.encode_www_form(ad_unit_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{})
  end

  @doc """
  Get ad code for the specified ad unit, attaching the specified host custom channels.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad client.
  - ad_client_id (String.t): Ad client with contains the ad unit.
  - ad_unit_id (String.t): Ad unit to get the code for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :hostCustomChannelId ([String.t]): Host custom channel to attach to the ad code.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdCode{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_get_ad_code(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.AdCode.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_get_ad_code(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
        opts \\ []
      ) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :hostCustomChannelId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id),
        "adUnitId" => URI.encode_www_form(ad_unit_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdCode{})
  end

  @doc """
  Insert the supplied ad unit into the specified publisher AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which will contain the ad unit.
  - ad_client_id (String.t): Ad client into which to insert the ad unit.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AdUnit): 

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_insert(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_insert(connection, account_id, ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{})
  end

  @doc """
  List all ad units in the specified publisher&#39;s AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad client.
  - ad_client_id (String.t): Ad client for which to list ad units.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :includeInactive (boolean()): Whether to include inactive ad units. Default: true.
    - :maxResults (integer()): The maximum number of ad units to include in the response, used for paging.
    - :pageToken (String.t): A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnits{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnits.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_list(connection, account_id, ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeInactive => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnits{})
  end

  @doc """
  Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad client.
  - ad_client_id (String.t): Ad client which contains the ad unit.
  - ad_unit_id (String.t): Ad unit to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AdUnit): 

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_patch(
        connection,
        account_id,
        ad_client_id,
        ad_unit_id,
        opts \\ []
      ) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id)
      })
      |> Request.add_param(:query, :adUnitId, ad_unit_id)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{})
  end

  @doc """
  Update the supplied ad unit in the specified publisher AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account which contains the ad client.
  - ad_client_id (String.t): Ad client which contains the ad unit.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AdUnit): 

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_adunits_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_adunits_update(connection, account_id, ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/accounts/{accountId}/adclients/{adClientId}/adunits", %{
        "accountId" => URI.encode_www_form(account_id),
        "adClientId" => URI.encode_www_form(ad_client_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.AdUnit{})
  end

  @doc """
  Get information about the selected associated AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Account to get information about.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.Account.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_get(connection, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}", %{
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.Account{})
  end

  @doc """
  List hosted accounts associated with this AdSense account by ad client id.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - filter_ad_client_id ([String.t]): Ad clients to list accounts for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.Accounts{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_list(Tesla.Env.client(), list(String.t()), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.Accounts.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_list(connection, filter_ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts")
      |> Request.add_param(:query, :filterAdClientId, filter_ad_client_id)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.Accounts{})
  end

  @doc """
  Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \&quot;alt&#x3D;csv\&quot; as a query parameter.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - account_id (String.t): Hosted account upon which to report.
  - start_date (String.t): Start of the date range to report on in \&quot;YYYY-MM-DD\&quot; format, inclusive.
  - end_date (String.t): End of the date range to report on in \&quot;YYYY-MM-DD\&quot; format, inclusive.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dimension ([String.t]): Dimensions to base the report on.
    - :filter ([String.t]): Filters to be run on the report.
    - :locale (String.t): Optional locale to use for translating report output to a local language. Defaults to \&quot;en_US\&quot; if not specified.
    - :maxResults (integer()): The maximum number of rows of report data to return.
    - :metric ([String.t]): Numeric columns to include in the report.
    - :sort ([String.t]): The name of a dimension or metric to sort the resulting report on, optionally prefixed with \&quot;+\&quot; to sort ascending or \&quot;-\&quot; to sort descending. If no prefix is specified, the column is sorted ascending.
    - :startIndex (integer()): Index of the first row of report data to return.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.Report{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_accounts_reports_generate(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.Report.t()} | {:error, Tesla.Env.t()}
  def adsensehost_accounts_reports_generate(
        connection,
        account_id,
        start_date,
        end_date,
        opts \\ []
      ) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dimension => :query,
      :filter => :query,
      :locale => :query,
      :maxResults => :query,
      :metric => :query,
      :sort => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/{accountId}/reports", %{
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_param(:query, :startDate, start_date)
      |> Request.add_param(:query, :endDate, end_date)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdSenseHost.V41.Model.Report{})
  end
end
