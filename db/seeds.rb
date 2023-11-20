beatles = Band.create(name: "The Beatles")
dl = Band.create(name: "Def Leppard")
poison = Band.create(name: "Poison")
Band.create(name: "ACDC")

Member.create(band: beatles , name: "John Lennon")
Member.create(band: beatles , name: "Paul McCartney")
Member.create(band: beatles , name: "George Harrison")

Member.create(band: dl, name: "Joe Elliot")
Member.create(band: dl, name: "Rick Allen")


Member.create(band: poison, name: "Bret Michaels")
Member.create(band: poison, name: "CC DeVille")
