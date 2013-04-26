$ = require 'jquery'
search = (genre,keyword) ->
    base = "https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130424?format=json&applicationId=1084425069581237387"
    url = "#{base}&keyword=#{keyword}&genreId=#{genre}&callback=?"

    await $.getJSON url, defer json
    if json.Items.length > 0
        console.log(json.Items)

    genre = 0
    url = "#{base}&keyword=#{keyword}&genreId=#{genre}&callback=?"

    await $.getJSON url, defer json
    console.log(json.Items)

search  process.argv[2],process.argv[3]
