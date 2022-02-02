//Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance.Here Music class have property singer, composer

class Song {
    
    var songname: String
    
    init(songname: String) {
        self.songname = songname
    }
    
}

class Music: Song {
    
    var singer: String = ""
    var composer: String = ""
    var songtype: String =  ""
    
    init(songname: String, singer: String, composer: String, songtype: String) {
        super.init(songname: songname)
        self.singer = singer
        self.composer = composer
        self.songtype = songtype
    }
    
}

class Hip_Hop: Music {

    init(songname: String, songtype: String, singer: String, composer: String) {
        super.init(songname: songname, singer: singer, composer: composer, songtype: songtype)
    }
}

class Classical: Music {
    
    init(songname: String, songtype: String, singer: String, composer: String) {
        super.init(songname: songname, singer: singer, composer: composer, songtype: songtype)
    }
}

let objHip_Hop = Hip_Hop(songname: "L'Trimm,Cars With the Boom", songtype: "Hip-Hop", singer: "Lady Tigra", composer: "Bunny D")

print("SongName : \(objHip_Hop.songname)\nSongType : \(objHip_Hop.songtype)\nSinger : \(objHip_Hop.singer)\nComposer : \(objHip_Hop.composer)")

print()

let objClassical = Classical(songname: "Beethoven - Grosse Fuge", songtype: "Classical", singer: "Ludwig van Beethoven", composer: "Louis Spohr")

print("SongName : \(objClassical.songname)\nSongType : \(objClassical.songtype)\nSinger : \(objClassical.singer)\nComposer : \(objClassical.composer)")
