describe "Application 'SplashMotion'" do
  before do
    @app = UIApplication.sharedApplication
    @root_view = @app.windows[0].rootViewController.view
    @start_views = @root_view.subviews.size
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it "starts with at least one subview" do
    @root_view.subviews.size.should > 0
  end

  it "should remove the splash by 5 seconds" do
    wait 5.0 do
      @root_view.subviews.size.should.not.equal @start_views
    end
  end
end
