# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.UsageExportLocation do
  @moduledoc """
  The location in Cloud Storage and naming method of the daily usage report. Contains bucket_name and report_name prefix.

  ## Attributes

  *   `bucketName` (*type:* `String.t`, *default:* `nil`) - The name of an existing bucket in Cloud Storage where the usage report object is stored. The Google Service Account is granted write access to this bucket. This can either be the bucket name by itself, such as example-bucket, or the bucket name with gs:// or https://storage.googleapis.com/ in front of it, such as gs://example-bucket.
  *   `reportNamePrefix` (*type:* `String.t`, *default:* `nil`) - An optional prefix for the name of the usage report object stored in bucketName. If not supplied, defaults to usage. The report is stored as a CSV file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is the day of the usage according to Pacific Time. If you supply a prefix, it should conform to Cloud Storage object naming conventions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => String.t(),
          :reportNamePrefix => String.t()
        }

  field(:bucketName)
  field(:reportNamePrefix)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UsageExportLocation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UsageExportLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UsageExportLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
