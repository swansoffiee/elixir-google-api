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

defmodule GoogleApi.MyBusinessLodging.V1.Model.Activities do
  @moduledoc """
  Amenities and features related to leisure and play.

  ## Attributes

  *   `golfException` (*type:* `String.t`, *default:* `nil`) - Golf exception.
  *   `boutiqueStores` (*type:* `boolean()`, *default:* `nil`) - Boutique stores. There are stores selling clothing, jewelry, art and decor either on hotel premises or very close by. Does not refer to the hotel gift shop or convenience store.
  *   `privateBeachException` (*type:* `String.t`, *default:* `nil`) - Private beach exception.
  *   `scuba` (*type:* `boolean()`, *default:* `nil`) - Scuba. The provision for guests to dive under naturally occurring water fitted with a self-contained underwater breathing apparatus (SCUBA) for the purpose of exploring underwater life. Apparatus consists of a tank providing oxygen to the diver through a mask. Requires certification of the diver and supervision. The hotel may have the activity at its own waterfront or have an affiliation with a nearby facility. Required equipment is most often supplied to guests. Can be free or for a fee. Not snorkeling. Not done in a swimming pool.
  *   `beachFront` (*type:* `boolean()`, *default:* `nil`) - Breach front. The hotel property is physically located on the beach alongside an ocean, sea, gulf, or bay. It is not on a lake, river, stream, or pond. The hotel is not separated from the beach by a public road allowing vehicular, pedestrian, or bicycle traffic.
  *   `casino` (*type:* `boolean()`, *default:* `nil`) - Casino. A space designated for gambling and gaming featuring croupier-run table and card games, as well as electronic slot machines. May be on hotel premises or located nearby.
  *   `freeWatercraftRental` (*type:* `boolean()`, *default:* `nil`) - Free watercraft rental. The hotel owns watercraft that it permits guests to borrow and use for free.
  *   `waterSkiing` (*type:* `boolean()`, *default:* `nil`) - Water skiing. The provision of giving guests the opportunity to be pulled across naturally occurring water while standing on skis and holding a tow rope attached to a motorboat. Can occur on hotel premises or at a nearby waterfront. Most often performed in a lake or ocean.
  *   `snorkelingException` (*type:* `String.t`, *default:* `nil`) - Snorkeling exception.
  *   `scubaException` (*type:* `String.t`, *default:* `nil`) - Scuba exception.
  *   `beachFrontException` (*type:* `String.t`, *default:* `nil`) - Beach front exception.
  *   `freeBicycleRentalException` (*type:* `String.t`, *default:* `nil`) - Free bicycle rental exception.
  *   `casinoException` (*type:* `String.t`, *default:* `nil`) - Casino exception.
  *   `tennisException` (*type:* `String.t`, *default:* `nil`) - Tennis exception.
  *   `boutiqueStoresException` (*type:* `String.t`, *default:* `nil`) - Boutique stores exception.
  *   `horsebackRidingException` (*type:* `String.t`, *default:* `nil`) - Horseback riding exception.
  *   `waterSkiingException` (*type:* `String.t`, *default:* `nil`) - Water skiing exception.
  *   `watercraftRentalException` (*type:* `String.t`, *default:* `nil`) - Watercraft rental exception.
  *   `horsebackRiding` (*type:* `boolean()`, *default:* `nil`) - Horseback riding. The hotel has a horse barn onsite or an affiliation with a nearby barn to allow for guests to sit astride a horse and direct it to walk, trot, cantor, gallop and/or jump. Can be in a riding ring, on designated paths, or in the wilderness. May or may not involve instruction.
  *   `privateBeach` (*type:* `boolean()`, *default:* `nil`) - Private beach. The beach which is in close proximity to the hotel is open only to guests.
  *   `snorkeling` (*type:* `boolean()`, *default:* `nil`) - Snorkeling. The provision for guests to participate in a recreational water activity in which swimmers wear a diving mask, a simple, shaped breathing tube and flippers/swim fins for the purpose of exploring below the surface of an ocean, gulf or lake. Does not usually require user certification or professional supervision. Equipment may or may not be available for rent or purchase. Not scuba diving.
  *   `nightclubException` (*type:* `String.t`, *default:* `nil`) - Nightclub exception.
  *   `beachAccessException` (*type:* `String.t`, *default:* `nil`) - Beach access exception.
  *   `freeWatercraftRentalException` (*type:* `String.t`, *default:* `nil`) - Free Watercraft rental exception.
  *   `golf` (*type:* `boolean()`, *default:* `nil`) - Golf. There is a golf course on hotel grounds or there is a nearby, independently run golf course that allows use by hotel guests. Can be free or for a fee.
  *   `gameRoomException` (*type:* `String.t`, *default:* `nil`) - Game room exception.
  *   `beachAccess` (*type:* `boolean()`, *default:* `nil`) - Beach access. The hotel property is in close proximity to a beach and offers a way to get to that beach. This can include a route to the beach such as stairs down if hotel is on a bluff, or a short trail. Not the same as beachfront (with beach access, the hotel's proximity is close to but not right on the beach).
  *   `tennis` (*type:* `boolean()`, *default:* `nil`) - Tennis. The hotel has the requisite court(s) on site or has an affiliation with a nearby facility for the purpose of providing guests with the opportunity to play a two-sided court-based game in which players use a stringed racquet to hit a ball across a net to the side of the opposing player. The court can be indoors or outdoors. Instructors, racquets and balls may or may not be provided.
  *   `gameRoom` (*type:* `boolean()`, *default:* `nil`) - Game room. There is a room at the hotel containing electronic machines for play such as pinball, prize machines, driving simulators, and other items commonly found at a family fun center or arcade. May also include non-electronic games like pool, foosball, darts, and more. May or may not be designed for children. Also known as arcade, fun room, or family fun center.
  *   `bicycleRentalException` (*type:* `String.t`, *default:* `nil`) - Bicycle rental exception.
  *   `watercraftRental` (*type:* `boolean()`, *default:* `nil`) - Watercraft rental. The hotel owns water vessels that it permits guests to borrow and use. Can be free or for a fee. Watercraft may include boats, pedal boats, rowboats, sailboats, powerboats, canoes, kayaks, or personal watercraft (such as a Jet Ski).
  *   `nightclub` (*type:* `boolean()`, *default:* `nil`) - Nightclub. There is a room at the hotel with a bar, a dance floor, and seating where designated staffers play dance music. There may also be a designated area for the performance of live music, singing and comedy acts.
  *   `freeBicycleRental` (*type:* `boolean()`, *default:* `nil`) - Free bicycle rental. The hotel owns bicycles that it permits guests to borrow and use for free.
  *   `bicycleRental` (*type:* `boolean()`, *default:* `nil`) - Bicycle rental. The hotel owns bicycles that it permits guests to borrow and use. Can be free or for a fee.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :golfException => String.t() | nil,
          :boutiqueStores => boolean() | nil,
          :privateBeachException => String.t() | nil,
          :scuba => boolean() | nil,
          :beachFront => boolean() | nil,
          :casino => boolean() | nil,
          :freeWatercraftRental => boolean() | nil,
          :waterSkiing => boolean() | nil,
          :snorkelingException => String.t() | nil,
          :scubaException => String.t() | nil,
          :beachFrontException => String.t() | nil,
          :freeBicycleRentalException => String.t() | nil,
          :casinoException => String.t() | nil,
          :tennisException => String.t() | nil,
          :boutiqueStoresException => String.t() | nil,
          :horsebackRidingException => String.t() | nil,
          :waterSkiingException => String.t() | nil,
          :watercraftRentalException => String.t() | nil,
          :horsebackRiding => boolean() | nil,
          :privateBeach => boolean() | nil,
          :snorkeling => boolean() | nil,
          :nightclubException => String.t() | nil,
          :beachAccessException => String.t() | nil,
          :freeWatercraftRentalException => String.t() | nil,
          :golf => boolean() | nil,
          :gameRoomException => String.t() | nil,
          :beachAccess => boolean() | nil,
          :tennis => boolean() | nil,
          :gameRoom => boolean() | nil,
          :bicycleRentalException => String.t() | nil,
          :watercraftRental => boolean() | nil,
          :nightclub => boolean() | nil,
          :freeBicycleRental => boolean() | nil,
          :bicycleRental => boolean() | nil
        }

  field(:golfException)
  field(:boutiqueStores)
  field(:privateBeachException)
  field(:scuba)
  field(:beachFront)
  field(:casino)
  field(:freeWatercraftRental)
  field(:waterSkiing)
  field(:snorkelingException)
  field(:scubaException)
  field(:beachFrontException)
  field(:freeBicycleRentalException)
  field(:casinoException)
  field(:tennisException)
  field(:boutiqueStoresException)
  field(:horsebackRidingException)
  field(:waterSkiingException)
  field(:watercraftRentalException)
  field(:horsebackRiding)
  field(:privateBeach)
  field(:snorkeling)
  field(:nightclubException)
  field(:beachAccessException)
  field(:freeWatercraftRentalException)
  field(:golf)
  field(:gameRoomException)
  field(:beachAccess)
  field(:tennis)
  field(:gameRoom)
  field(:bicycleRentalException)
  field(:watercraftRental)
  field(:nightclub)
  field(:freeBicycleRental)
  field(:bicycleRental)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.Activities do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.Activities.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.Activities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
