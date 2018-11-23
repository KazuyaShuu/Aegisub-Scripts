script_name = "Romanian Diacritics"
script_description = "Change wrong diacritics with the right ones."
script_author = "KazuyaShuu"
script_version = "1.0.0"

function change_diacritics(subs, sel, active)
    for i = 1, #subs do
        if subs[i].class == "dialogue" then
			local line = subs[i]
			line.text = line.text:gsub("ã", "ă")
			line.text = line.text:gsub("º", "ș")
			line.text = line.text:gsub("þ", "ț")
			line.text = line.text:gsub("Ã", "Ă")
			line.text = line.text:gsub("ª", "Ș")
			line.text = line.text:gsub("Þ", "Ț")
			line.text = line.text:gsub("ş", "ș")
			line.text = line.text:gsub("ţ", "ț")
			line.text = line.text:gsub("Ş", "Ș")
			line.text = line.text:gsub("Ţ", "Ț")
			subs[i] = line
		end
    end
    aegisub.set_undo_point("Romanian Diacritics")
end

aegisub.register_macro(script_name, script_description, change_diacritics)