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

defmodule GoogleApi.Licensing.V1.Api.LicenseAssignments do
  @moduledoc """
  API calls for all endpoints tagged `LicenseAssignments`.
  """

  alias GoogleApi.Licensing.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Revoke License.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku
  - user_id (String.t): email id or unique Id of the user
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_delete(connection, product_id, sku_id, user_id, opts \\ []) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id),
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Get license assignment of a particular product and sku for a user

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku
  - user_id (String.t): email id or unique Id of the user
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_get(connection, product_id, sku_id, user_id, opts \\ []) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id),
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{})
  end

  @doc """
  Assign License.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (LicenseAssignmentInsert): 

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_insert(connection, product_id, sku_id, opts \\ []) do
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
      |> Request.url("/{productId}/sku/{skuId}/user", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{})
  end

  @doc """
  List license assignments for given product of the customer.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - customer_id (String.t): CustomerId represents the customer for whom licenseassignments are queried
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of campaigns to return at one time. Must be positive. Optional. Default value is 100.
    - :pageToken (String.t): Token to fetch the next page.Optional. By default server will return first page

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_list_for_product(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignmentList.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_list_for_product(
        connection,
        product_id,
        customer_id,
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
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{productId}/users", %{
        "productId" => URI.encode_www_form(product_id)
      })
      |> Request.add_param(:query, :customerId, customer_id)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{})
  end

  @doc """
  List license assignments for given product and sku of the customer.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku
  - customer_id (String.t): CustomerId represents the customer for whom licenseassignments are queried
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of campaigns to return at one time. Must be positive. Optional. Default value is 100.
    - :pageToken (String.t): Token to fetch the next page.Optional. By default server will return first page

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_list_for_product_and_sku(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignmentList.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_list_for_product_and_sku(
        connection,
        product_id,
        sku_id,
        customer_id,
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
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{productId}/sku/{skuId}/users", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id)
      })
      |> Request.add_param(:query, :customerId, customer_id)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{})
  end

  @doc """
  Assign License. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku for which license would be revoked
  - user_id (String.t): email id or unique Id of the user
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (LicenseAssignment): 

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_patch(connection, product_id, sku_id, user_id, opts \\ []) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id),
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{})
  end

  @doc """
  Assign License.

  ## Parameters

  - connection (GoogleApi.Licensing.V1.Connection): Connection to server
  - product_id (String.t): Name for product
  - sku_id (String.t): Name for sku for which license would be revoked
  - user_id (String.t): email id or unique Id of the user
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (LicenseAssignment): 

  ## Returns

  {:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}} on success
  {:error, info} on failure
  """
  @spec licensing_license_assignments_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_update(connection, product_id, sku_id, user_id, opts \\ []) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode_www_form(product_id),
        "skuId" => URI.encode_www_form(sku_id),
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{})
  end
end
