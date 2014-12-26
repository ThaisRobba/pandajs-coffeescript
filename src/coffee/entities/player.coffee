game.module "game.entities.player"
.body ->
  game.createClass "Player",
    init: (x, y) ->
      @sprite = new game.Sprite("player.png")
      @sprite.addTo game.scene.stage
      @sprite.position.set x, y
      @sprite.anchor.set 0.5, 0.5

    update: ->
      #Movement and other stuff :)
