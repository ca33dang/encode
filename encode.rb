def roman_encode(msg)
	[msg[0].tr("A-Za-z", "F-ZA-Ef-za-e")]
end
def roman_decode(msg)
	[msg[0].tr("F-ZA-Ef-za-e", "A-Za-z")]
end
