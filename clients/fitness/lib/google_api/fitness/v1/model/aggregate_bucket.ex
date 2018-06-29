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

defmodule GoogleApi.Fitness.V1.Model.AggregateBucket do
  @moduledoc """


  ## Attributes

  - activity (integer()): Available for Bucket.Type.ACTIVITY_TYPE, Bucket.Type.ACTIVITY_SEGMENT Defaults to: `null`.
  - dataset ([Dataset]): There will be one dataset per AggregateBy in the request. Defaults to: `null`.
  - endTimeMillis (String.t): The end time for the aggregated data, in milliseconds since epoch, inclusive. Defaults to: `null`.
  - session (Session): Available for Bucket.Type.SESSION Defaults to: `null`.
  - startTimeMillis (String.t): The start time for the aggregated data, in milliseconds since epoch, inclusive. Defaults to: `null`.
  - type (String.t): The type of a bucket signifies how the data aggregation is performed in the bucket. Defaults to: `null`.
    - Enum - one of [activitySegment, activityType, session, time, unknown]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activity => any(),
          :dataset => list(GoogleApi.Fitness.V1.Model.Dataset.t()),
          :endTimeMillis => any(),
          :session => GoogleApi.Fitness.V1.Model.Session.t(),
          :startTimeMillis => any(),
          :type => any()
        }

  field(:activity)
  field(:dataset, as: GoogleApi.Fitness.V1.Model.Dataset, type: :list)
  field(:endTimeMillis)
  field(:session, as: GoogleApi.Fitness.V1.Model.Session)
  field(:startTimeMillis)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.AggregateBucket do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.AggregateBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.AggregateBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
