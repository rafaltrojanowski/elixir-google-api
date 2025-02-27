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

defmodule GoogleApi.OSLogin.V1alpha.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.OSLogin.V1alpha.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The unique ID for the user in format `users/{user}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:operatingSystemType` (*type:* `String.t`) - The type of operating system associated with the account.
      *   `:projectId` (*type:* `String.t`) - The project ID of the Google Cloud Platform project.
      *   `:systemId` (*type:* `String.t`) - A system ID for filtering the results of the request.
      *   `:view` (*type:* `String.t`) - The view configures whether to retrieve security keys information.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.LoginProfile{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_get_login_profile(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.LoginProfile.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_get_login_profile(connection, name, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :operatingSystemType => :query,
      :projectId => :query,
      :systemId => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+name}/loginProfile", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.LoginProfile{}])
  end

  @doc """
  Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - The unique ID for the user in format `users/{user}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:projectId` (*type:* `String.t`) - The project ID of the Google Cloud Platform project.
      *   `:view` (*type:* `String.t`) - The view configures whether to retrieve security keys information.
      *   `:body` (*type:* `GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.ImportSshPublicKeyResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_import_ssh_public_key(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.ImportSshPublicKeyResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_import_ssh_public_key(connection, parent, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :projectId => :query,
      :view => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha/{+parent}:importSshPublicKey", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.ImportSshPublicKeyResponse{}]
    )
  end

  @doc """
  Deletes a POSIX account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. A reference to the POSIX account to update. POSIX accounts are identified by the project ID they are associated with. A reference to the POSIX account is in format `users/{user}/projects/{project}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:operatingSystemType` (*type:* `String.t`) - The type of operating system associated with the account.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_projects_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_projects_delete(connection, name, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :operatingSystemType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.Empty{}])
  end

  @doc """
  Create an SSH public key

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The unique ID for the user in format `users/{user}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_ssh_public_key_create(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_ssh_public_key_create(connection, parent, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha/{+parent}/sshPublicKey", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}])
  end

  @doc """
  Deletes an SSH public key.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_ssh_public_keys_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_ssh_public_keys_delete(connection, name, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.Empty{}])
  end

  @doc """
  Retrieves an SSH public key.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_ssh_public_keys_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_ssh_public_keys_get(connection, name, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}])
  end

  @doc """
  Updates an SSH public key and returns the profile information. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.OSLogin.V1alpha.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - Mask to control which fields get updated. Updates all if not present.
      *   `:body` (*type:* `GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}}` on success
  *   `{:error, info}` on failure
  """
  @spec oslogin_users_ssh_public_keys_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.OSLogin.V1alpha.Model.SshPublicKey.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def oslogin_users_ssh_public_keys_patch(connection, name, optional_params \\ [], opts \\ []) do
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
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.OSLogin.V1alpha.Model.SshPublicKey{}])
  end
end
