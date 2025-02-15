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

defmodule GoogleApi.HealthCare.V1.Model.ValidationConfig do
  @moduledoc """
  Contains the configuration for FHIR profiles and validation.

  ## Attributes

  *   `disableFhirpathValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to disable FHIRPath validation for incoming resources. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  *   `disableReferenceTypeValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to disable reference type validation for incoming resources. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  *   `disableRequiredFieldValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to disable required fields validation for incoming resources. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableFhirpathValidation => boolean() | nil,
          :disableReferenceTypeValidation => boolean() | nil,
          :disableRequiredFieldValidation => boolean() | nil
        }

  field(:disableFhirpathValidation)
  field(:disableReferenceTypeValidation)
  field(:disableRequiredFieldValidation)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ValidationConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ValidationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ValidationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
