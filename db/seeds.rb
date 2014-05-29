# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Piece.create(title: 'A BAR AT THE FOLIES-BERGERE',
            maker: 'Edouard Manet',
            stuff: 'Oil and Canvas',
            time_period: '1880s',
            location_id: 1)

Piece.create(title: 'SELF-PORTRAIT WITH BANDAGED EAR',
            maker: 'Vincent van Gogh',
            stuff: 'Oil and Canvas',
            time_period: '1880s',
            location_id: 1)

Piece.create(title: 'NEVERMORE',
            maker: 'Paul Gauguin',
            stuff: 'Oil and Canvas',
            time_period: '1890s',
            location_id: 1)

Piece.create(title: 'TWO DANCERS ON A STAGE',
            maker: 'Edgar Degas',
            stuff: 'Oil and Canvas',
            time_period: '1870s',
            location_id: 1)

Piece.create(title: 'AUTUMN EFFECT AT ARGENTEUIL',
            maker: 'Claude Monet',
            stuff: 'Oil and Canvas',
            time_period: '1870s')

Piece.create(title: 'WOMAN WITH LONG HAIR',
            maker: 'Maker Unknown',
            stuff: 'Terracotta',
            time_period: '580 BC')

Piece.create(title: 'THE GATES OF HELL',
            maker: 'Auguste Rodin',
            stuff: 'Bronze',
            time_period: '1900')

Location.create(name: 'The Courtauld Gallery',
            street: 'Strand',
            city: 'London',
            state: 'United Kingdom',
            zip: 'WC2R 0RN',
            space: 'gallery')

User.create(fname: 'Kat',
            lname: 'Be',
            username: 'katbe',
            favorite_piece: 'Abstract #19',
            email: 'katbe@example.com',
            password: 'foobarfoo'
            )

User.create(fname: 'Gil',
            lname: 'Ad',
            username: 'AdGil',
            favorite_piece: 'Salmon Swimming',
            email: 'AdGil@example.com',
            password: 'foobarfoo')

User.create(fname: 'Amanda',
            lname: 'Ryan',
            username: 'whiteMeercat',
            favorite_piece: 'MEERKAT REVOLUTION',
            email: 'amanda.ryan53@example.com',
            password: 'foobarfoo')

User.create(fname: 'Keith',
            lname: 'Fisher',
            username: 'orangeGorilla',
            favorite_piece: 'Gorilla Statue at SurveyMonkey',
            email: 'keith.fisher91@example.com',
            password: 'foobarfoo')

u = User.find(1)
u.check_ins.create(piece_id: 1, note: "Love this bar!")

u = User.find(2)
u.check_ins.create(piece_id: 3, note: "The raven")

u = User.find(3)
u.check_ins.create(piece_id: 1, note: "She looks really sad :(")

u = User.find(4)
u.check_ins.create(piece_id: 1, note: "Meh")

u = User.find(4)
u.check_ins.create(piece_id: 4, note: "This piece is really cool")
