game.module 'game.main'
.require    'game.assets',
            'game.loader',
            'game.entities.player'
.body ->
  game.createScene 'Main',
    backgroundColor: 0x000000

    init: ->
      @player = new game.Player game.system.width / 2, game.system.height / 2
      @player2 = new game.Player game.system.width / 3, game.system.height / 2
