game.module 'game.loader'
.body ->
  game.Loader.inject
    initStage: ->
      @loading = new game.Sprite.fromImage 'media/loading.png'
      @loading.position.set game.system.width / 2, game.system.height / 2 - 50
      @loading.anchor.set 0.5, 0.5
      
      @barBg = new game.Graphics()
      @barBg.beginFill 0x888888
      @barBg.drawRect 0, 0, 384, 4
      @barBg.position.x = game.system.width / 2 - (384 / 2)
      @barBg.position.y = game.system.height / 2 - 2
      
      @bar = new game.Graphics()
      @bar.beginFill 0x00ffff
      @bar.drawRect 0, 0, 384, 4
      
      @bar.position.x = game.system.width / 2 - (384 / 2)
      @bar.position.y = game.system.height / 2 - 2
      @bar.scale.x = @percent / 100
      
      @stage.addChild @loading
      @stage.addChild @barBg
      @stage.addChild @bar

    onPercentChange: ->
      @bar.scale.x = @percent / 100
