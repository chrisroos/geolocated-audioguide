# Geolocated audioguide

I [wrote about this ages ago](http://chrisroos.co.uk/blog/2009-09-14-pouring-factlets-into-your-brain-holder-via-your-ear-sieves) and did some investigation.  I'm going to pop that original 'work' in here and see if the mobile browsers are any better now.

This is currently deployed at [http://geolocated-audioguide.heroku.com](http://geolocated-audioguide.heroku.com).

## TODO

* Add fallback text for browsers that don't support the audio tag.
* Create an OGG/Vorbis file - this should work in Firefox.  I currently have OGG/FLAC.

## Notes

### HTML 5 Audio tag

    <audio autoplay controls>
      <source src="test.ogg" />
      <source src="test.mp3" />
    </audio>

### Browser geolocation

Try this in your browser console.

    navigator.geolocation.getCurrentPosition(function(position) { console.log(position) }, function(errorMessage) { console.log(errorMessage) });

### Google text to speech

[http://translate.google.com/translate_tts?q=geolocated+audioguide+test](http://translate.google.com/translate_tts?q=geolocated+audioguide+test)

I downloaded this MP3 file and used [ffmpeg](http://www.ffmpeg.org/) to convert it to OGG and WAV.

    $ curl "http://translate.google.com/translate_tts?q=geolocated+audioguide+test" -H"User-Agent: User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-GB; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12 GTB7.1" > public/audio/test.mp3
    $ ffmpeg -i public/audio/test.mp3 public/audio/test.ogg
    $ ffmpeg -i public/audio/test.mp3 public/audio/test.wav

### GeoNames web service to find geotagged wikipedia articles for a given lat/lng

See the [GeoNames documentation](http://www.geonames.org/export/wikipedia-webservice.html#findNearbyWikipedia).

[Wikipedia articles relating to things near Bank, London](http://ws.geonames.org/findNearbyWikipediaJSON?lat=51.51333&lng=-0.088947).