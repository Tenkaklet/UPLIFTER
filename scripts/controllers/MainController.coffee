MainController = (getPlaylists, $sce) ->
  that = this
  this.video = false
  this.showVideo = ->
    that.video = true
  this.hideVideo = ->
    that.video = false
  success = (playlists) ->
    happy =
      title: 'Happy'
      playlistId: playlists[0]
    sad =
      title: 'Sad'
      playlistId: playlists[1]
    calm =
      title: 'Calm'
      playlistId: playlists[2]
    that.moods = [happy, sad, calm]
  this.setMood = (mood) ->
    that.playlist =
      url: $sce.trustAsResourceUrl 'https://youtube.com/embed?autoplay=true&listType=playlist&list=' + mood.playlistId
    
  error = (data, status, headers, config) ->
    throw new Error "Error: #{headers}"
  
  getPlaylists success, error
  return this

MainController.$inject = ['getTracks', '$sce']

angular.module 'uplifter'
  .controller 'MainController', MainController