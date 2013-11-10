class ViewController < UIViewController
  def viewDidLoad
    super

    # Configure the view.
    sk_view = SKView.alloc.init
    sk_view.showsFPS = true
    sk_view.showsNodeCount = true

    # Create and configure the scene.
    scene = MyScene.sceneWithSize(CGSizeMake(768, 1024))
    scene.scaleMode = SKSceneScaleModeAspectFill

    # Present the scene.
    sk_view.presentScene(scene)

    self.view = sk_view
  end

  def shouldAutorotate
    true
  end

  def supportedInterfaceOrientations
    if UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone
      UIInterfaceOrientationMaskAllButUpsideDown
    else
      UIInterfaceOrientationMaskAll
    end
  end

  def didReceiveMemoryWarning
    super
    # Release any cached data, images, etc that aren't in use.
  end
end
