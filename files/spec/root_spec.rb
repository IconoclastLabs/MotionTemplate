describe "The root controller" do
	tests RootController

	it "loads the controller fine" do
		controller.should.not == nil
	end

end