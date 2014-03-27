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
            time_period: '1880s')

Piece.create(title: 'SELF-PORTRAIT WITH BANDAGED EAR',
            maker: 'Vincent van Gogh',
            stuff: 'Oil and Canvas',
            time_period: '1880s')

Piece.create(title: 'NEVERMORE',
            maker: 'Paul Gauguin',
            stuff: 'Oil and Canvas',
            time_period: '1890s')

Piece.create(title: 'TWO DANCERS ON A STAGE',
            maker: 'Edgar Degas',
            stuff: 'Oil and Canvas',
            time_period: '1870s')

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
