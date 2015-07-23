getTracks = ($http) ->
  (success, error) ->
    success ['PL88534134DDA83D46', 'PL0broEZzI0fXGqBE7AIPl3HfTrLS4MQb6', 'PLACEEFCFC383D44D6']
  
getTracks.$inject = ['$http']

angular.module 'uplifter'
  .factory 'getTracks', getTracks