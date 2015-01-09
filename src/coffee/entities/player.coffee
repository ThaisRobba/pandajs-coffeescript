game.module 'game.entities.player'
.body ->
  game.createClass 'Player',
    init: (x, y) ->
      @sprite = new game.Sprite 'player.png'
      @sprite.addTo game.scene.stage
      @sprite.position.set x, y
      @sprite.anchor.set 0.5, 0.5
      
      #Makes it so this object's update function will be automatically calle by the scene
      game.scene.addObject this

    update: ->
      @sprite.position.x += 1
