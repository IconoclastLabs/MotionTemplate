describe "The settings controller" do
	tests SettingsController

	it "loads the controller fine" do
		controller.should.not == nil
	end

	it "has a twitter label" do
		controller.instance_variable_get("@twitter").should.not == nil
	end

end