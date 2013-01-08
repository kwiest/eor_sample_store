# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = Product.create [
  {
    name: 'Cervelo R3 Bicycle',
    description: %q{The R3 features BBright and the same exclusive second generation Squoval tube shapes as our R5, to combine all the benefits of a stiff and light bicycle with the strength and comfort needed to win on the cobbles of the roughest roads in Europe. Built on the lessons learned at Project California, its renowned comfort comes from using ultra-thin seat stays along with an optimized 1 3/8" steerer tube. Stiff, light and comfortable, this bike provides the responsiveness and the confidence needed when descending, cornering, racing for the win, or just sheer pleasure during your Sunday ride.},
    base_price_cents: 300000,
    image_url: 'https://s3-us-west-2.amazonaws.com/ecommerceonrails/images/cervelo-r3.jpg'
  },
  {
    name: 'Team Garmin Barracuda Cycling Jersey',
    description: %q{This season's new Garmin Barracuda Team jersey highlights the Argyle, and a more blue color scheme, on the pro team kit. We look forward to the season ahead, and are sure that the boys will stand out, as they always do!

* Prosecco Strada fabric for breathability and comfort.
* Mesh side panels for further cooling and breathability.
* Anatomic form-fit, cut to fit the rider in the cycling position.
* Silicone gripper elastic at the waist.
* 3 rear pockets.

Castelli cycling apparel is designed to hug all the curves of your body; we recommend ordering a size larger than you typically would for an American-sized cut.},
    base_price_cents: 7499,
    image_url: 'https://s3-us-west-2.amazonaws.com/ecommerceonrails/images/garmin-jersey.jpg'
  },
  {
    name: 'Castelli Bib Shorts',
    description: %q{Castelli's mid-level bibshort will still have you streets ahead of the competition's more expensive offerings. This short is just as good as it looks - and a super bargain at this mid-range price. The 10-panel construction provides an exceptional fit and unsurpassed level of comfort. Castelli's proven Kiss3 seatpad will provide hour after hour of in-the-saddle comfort and the racey go-fast look is sure to impress. The Affinity lycra used has excellent stretch and recovery, is super-soft against the skin and has a smooth semi-matt finish. New Giro3 leg band elastic provides grip without excessive binding. Look fast, feel fast and you will go faster. So will these great shorts, so don't delay - grab yourself a pair today!

* 10-panel construction provides exceptional fit and comfort.
* Highly stretchable and durable Affinity Lycra 210g fabric throughout the short.
* Mesh upper bib.
* Kiss 3 Chamois seat pad.
* Color-match Giro3 leg band elastic grippers.
* 2 rear reflective bands at the leg grippers.},
    base_price_cents: 12999,
    image_url: 'https://s3-us-west-2.amazonaws.com/ecommerceonrails/images/castelli-bib-shorts.jpg'
  }
]
