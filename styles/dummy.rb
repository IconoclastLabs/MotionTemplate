# strange wizardly madness needed to stop odd errors in Teacup
class DummyUISwitch < UISwitch
private
	def dummy
		setOn(nil)
	end

end