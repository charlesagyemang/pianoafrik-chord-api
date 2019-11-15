class PianoChords
	def self.hey
		"ahjahs"
	end

	def get_sofas_of_key(key)

		sofas_array = [ "Do", "Re", "Mi", "Fa", "So", "La", "Ti" ]

		keys_array  = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "G#", "A", "Bb", "B"]

		do_all_keys_array = [
			"C Major",
			"C# Major",
			"D Major",
			"Eb Major",
			"E Major",
			"F Major",
			"F# Major",
			"G Major",
			"G# Major",
			"A Major",
			"Bb Major",
			"B Major"
		]

		re_all_keys_array = [
			"D Minor",
			"Eb Minor",
			"E Minor",
			"F Minor",
			"F# Minor",
			"G Minor",
			"G# Minor",
			"A Minor",
			"Bb Minor",
			"B Minor",
			"C Minor",
			"C# Minor"
		]

		mi_all_keys_array = [
			"E Minor",
			"F Minor",
			"F# Minor",
			"G Minor",
			"G# Minor",
			"A Minor",
			"Bb Minor",
			"B Minor",
			"C Minor",
			"C# Minor",
			"D Minor",
			"Eb Minor"
		]


		fa_all_keys_array = [
			"F Major",
			"F# Major",
			"G Major",
			"G# Major",
			"A Major",
			"Bb Major",
			"B Major",
			"C Major",
			"C# Major",
			"D Major",
			"Eb Major",
			"E Major"
		]

		so_all_keys_array = [
			"G Major",
			"G# Major",
			"A Major",
			"Bb Major",
			"B Major",
			"C Major",
			"C# Major",
			"D Major",
			"Eb Major",
			"E Major",
			"F Major",
			"F# Major"
		]


		la_all_keys_array = [
			"A Minor",
			"Bb Minor",
			"B Minor",
			"C Minor",
			"C# Minor",
			"D Minor",
			"Eb Minor",
			"E Minor",
			"F Minor",
			"F# Minor",
			"G Minor",
			"G# Minor"
		]

		ti_all_keys_array = [
			"B Diminished",
			"C Diminished",
			"C# Diminished",
			"D Diminished",
			"Eb Diminished",
			"E Diminished",
			"F Diminished",
			"F# Diminished",
			"G Diminished",
			"G# Diminished",
			"A Diminished",
			"Bb Diminished"
		]


		tor_all_keys_array = [
			"Bb Dim 7th",
			"B Dim 7th",
			"C Dim 7th",
			"C# Dim 7th",
			"D Dim 7th",
			"Eb Dim 7th",
			"E Dim 7th",
			"F Dim 7th",
			"F# Dim 7th",
			"G Dim 7th",
			"G# Dim 7th",
			"A Dim 7th"
		]


		all_keys_name = [
			do_all_keys_array,
			re_all_keys_array,
			mi_all_keys_array,
			fa_all_keys_array,
			so_all_keys_array,
			la_all_keys_array,
			ti_all_keys_array,
		]


		postition = keys_array.index(key.capitalize)

		result_chord_names = []

		all_keys_name.each do |val|
			result_chord_names.push(val[postition])
		end

		result_chord_names

	end


	def major_chord_names_and_details(key, inverstion=0..3)

		keys_array = ["C Major", "C# Major", "D Major", "Eb Major", "E Major", "F Major", "F# Major", "G Major", "G# Major", "A Major", "Bb Major", "B Major"]
		position = keys_array.index(key.capitalize + " Major");


		raw_names = [

						{ 0 =>  [ 	"C E G",
									"E G C",
									"G C E"
								]
						},
						{ 1 => [
									"C# F G#",
									"F G# C#",
									"G# C# F"
							   ]
					    } ,
						{ 2 => [
									"D F# A",
									"F# A D",
									"A D F#"
							   ]
					    },
						{ 3 => [
									"Eb G Bb",
									"G Bb Eb",
									"Bb Eb G"
							   ]
					    },
						{ 4 => [
									"E G# B",
									"G# B E",
									"B E G#"
							   ]
					    },
						{ 5 => [
									"F A C",
									"A C F",
									"C F A"
							   ]
					    },
						{ 6 => [
									"F# Bb C#",
									"Bb C# F#",
									"C# F# Bb"
							   ]
					    },
						{ 7 => [
									"G B D",
									"B D G",
									"D G B"
							   ]
					    },
						{ 8 => [
									"G# C Eb",
									"C Eb G#",
									"Eb G# C"
							   ]
					    },
						{ 9 => [
									"A C# E",
									"C# E A ",
									"E A C#"
							   ]
					    },
						{ 10 => [
									"Bb D F",
									"D F Bb",
									"F Bb D"
							   ]
					    },
						{ 11 => [
									"B Eb F#",
									"Eb F# B",
									"F# B Eb"
							   ]
					 }

		 		]

		 raw_names[position][position][inverstion]

	end


	def minor_chord_names_and_details(key, inverstion=0..3)

		keys_array = [	"C Minor",
						"C# Minor",
						"D Minor",
						"Eb Minor",
						"E Minor",
						"F Minor",
						"F# Minor",
						"G Minor",
						"G# Minor",
						"A Minor",
						"Bb Minor",
						"B Minor"
					 ]

		position = keys_array.index(key.capitalize + " Minor");


		raw_names = [

						{ 0 =>  [ 	"C Eb G",
									"Eb G C",
									"G C Eb"
								]
						},
						{ 1 => [
									"C# E G#",
									"E G# C#",
									"G# C# E"
							   ]
					    } ,
						{ 2 => [
									"D F A",
									"F A D",
									"A D F"
							   ]
					    },
						{ 3 => [
									"Eb F# Bb",
									"F# Bb Eb",
									"Bb Eb F#"
							   ]
					    },
						{ 4 => [
									"E G B",
									"G B E",
									"B E G"
							   ]
					    },
						{ 5 => [
									"F G# C",
									"G# C F",
									"C F G#"
							   ]
					    },
						{ 6 => [
									"F# A C#",
									"A C# F#",
									"C# F# A"
							   ]
					    },
						{ 7 => [
									"G Bb D",
									"Bb D G",
									"D G Bb"
							   ]
					    },
						{ 8 => [
									"G# B Eb",
									"B Eb G#",
									"Eb G# B"
							   ]
					    },
						{ 9 => [
									"A C E",
									"C E A ",
									"E A C"
							   ]
					    },
						{ 10 => [
									"Bb C# F",
									"C# F Bb",
									"F Bb C#"
							   ]
					    },
						{ 11 => [
									"B D F#",
									"D F# B",
									"F# B D"
							   ]
					 }

		 		]

		 raw_names[position][position][inverstion]
	end



	def diminished_chord_names_and_details(key, inverstion=0..3)

		keys_array = [	"C Diminished",
						"C# Diminished",
						"D Diminished",
						"Eb Diminished",
						"E Diminished",
						"F Diminished",
						"F# Diminished",
						"G Diminished",
						"G# Diminished",
						"A Diminished",
						"Bb Diminished",
						"B Diminished"
					 ]

		position = keys_array.index(key.capitalize + " Diminished");


		raw_names = [

						{ 0 =>  [ 	"C Eb F#",
									"Eb F# C",
									"F# C Eb"
								]
						},
						{ 1 => [
									"C# E G",
									"E G C#",
									"G C# E"
							   ]
					    } ,
						{ 2 => [
									"D F G#",
									"F G# D",
									"G# D F"
							   ]
					    },
						{ 3 => [
									"Eb F# A",
									"F# A Eb",
									"A Eb F#"
							   ]
					    },
						{ 4 => [
									"E G Bb",
									"G Bb E",
									"Bb E G"
							   ]
					    },
						{ 5 => [
									"F G# B",
									"G# B F",
									"B F G#"
							   ]
					    },
						{ 6 => [
									"F# A C",
									"A C F#",
									"C F# A"
							   ]
					    },
						{ 7 => [
									"G Bb C#",
									"Bb C# G",
									"C# G Bb"
							   ]
					    },
						{ 8 => [
									"G# B D",
									"B D G#",
									"D G# B"
							   ]
					    },
						{ 9 => [
									"A C Eb",
									"C Eb A ",
									"Eb A C"
							   ]
					    },
						{ 10 => [
									"Bb C# E",
									"C# E Bb",
									"E Bb C#"
							   ]
					    },
						{ 11 => [
									"B D F",
									"D F B",
									"F B D"
							   ]
					 }

		 		]
		 raw_names[position][position][inverstion]
	end

	def inversions(position,inv=0..3)
		raw_names = [

						{ 0 =>  [ 	"Do Mi So || 1 3 5",
									"Mi So Do || 3 5 1",
									"So Do Mi || 5 1 3"
								]
						},
						{ 1 => [
									"Re Fa La || 2 4 6",
									"Fa La Re || 4 6 2",
									"La Re Fa || 6 2 4"
							   ]
					    } ,
						{ 2 => [
									"Mi So Ti || 3 5 7",
									"So Ti Mi || 5 7 3",
									"Ti Mi So || 7 3 5"
							   ]
					    },
						{ 3 => [
									"Fa La Do || 4 6 1",
									"La Do Fa || 6 1 4",
									"Do Fa La || 1 4 6"
							   ]
					    },
						{ 4 => [
									"So Ti Re || 5 7 2",
									"Ti Re So || 7 2 5",
									"Re So Ti || 2 5 7"
							   ]
					    },
						{ 5 => [
									"La Do Mi || 6 1 3",
									"Do Mi La || 1 3 6",
									"Mi La Do || 3 6 1"
							   ]
					    },
						{ 6 => [
									"Ti Re Fa || 7 2 4",
									"Re Fa Ti || 2 4 7",
									"Fa Ti Re || 4 7 2"
							   ]
					    }

		 		]
	 		raw_names[position][position][inv]

	end

	def combine_nuggets (arr1, arr2)
		m = arr1
	    n = arr2

	    [ m[0] + " || " + n[0], m[1] + " || " + n[1], m[2] + " || " + n[2] ]

	end

	def get_sofas_and_invertions(key)

		returnArray = {}

		degree_array = [ "Do", "Re", "Mi", "Fa", "So", "La", "Ti" ]


		sofas = get_sofas_of_key(key)

		sofas.each_with_index do |m, i|
			sofa_inv = inversions(i)
			newSofa =  {
				"degree" => degree_array[i],
				"chord_name" => m
			}

			if i == 1 || i == 2 || i == 5
				arr1 = minor_chord_names_and_details(m.split(" ")[0])
				arr2 = inversions(i)
				newSofa["chord_inversions"] = combine_nuggets(arr1, arr2)

			elsif i == 6
				arr1 = diminished_chord_names_and_details(m.split(" ")[0])
				arr2 = inversions(i)
				newSofa["chord_inversions"] = combine_nuggets(arr1, arr2)

			else
				arr1 = major_chord_names_and_details(m.split(" ")[0])
				arr2 = inversions(i)
				newSofa["chord_inversions"] = combine_nuggets(arr1, arr2)
			end

			returnArray[i + 1] = newSofa
		end

		returnArray
	end
end


class Harmonization
	def form_body (piano_chords, position, inversion, name)
	op = ""
		if inversion == 0

			op = " #{name} (root inv) || " + piano_chords[position]["chord_name"].split(" ")[0]

			if position == 2 || position == 3 || position == 6

				op = op + " Min (root inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			elsif position == 7

				op = op + " Dim (root inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			else

				op = op + " Maj (root inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			end
		elsif inversion == 1

			op = " #{name} (1st Inv) || " + piano_chords[position]["chord_name"].split(" ")[0]

			if position == 2 || position == 3 || position == 6

				op = op + " Min (1st Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			elsif position == 7

				op = op + " Dim (1st Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			else

				op = op + " Maj (1st Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			end
		else
			op = " #{name} (2nd Inv) || " + piano_chords[position]["chord_name"].split(" ")[0]

			if position == 2 || position == 3 || position == 6

				op = op + " Min (2nd Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			elsif position == 7

				op = op + " Dim (2nd Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			else

				op = op + " Maj (2nd Inv)" + " || " + piano_chords[position]["chord_inversions"][inversion]

			end
		end

		op
	end

	def form_option (options, name)
		{
			"degree" => "#{name}(H)",
			"number_of_options" => options.count,
			"options" => options,
		}
	end

	def flat_key(key)
		keys_array  = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "G#", "A", "Bb", "B"]
		position = keys_array.index(key) - 1

		keys_array[position]

	end

	def seventh(position, piano_chords, piano, faa)
		four = piano_chords[position]["chord_name"].split(" ")[0]
		four_seventh = piano.major_chord_names_and_details(four)[2]
		four_seventh = "#{four_seventh[0]} #{flat_key(flat_key(four))}#{four_seventh[1..-1]}"
		" #{faa} 7th (2nd Inv) || #{four} Maj 7th (2nd Inv) || #{four_seventh} "
	end

	def seventh_minor(position, piano_chords, piano, faa, inv)
		four = piano_chords[position]["chord_name"].split(" ")[0]
		four_seventh = piano.minor_chord_names_and_details(four)[inv]
		four_seventh = "#{four_seventh[0]} #{flat_key(flat_key(four))}#{four_seventh[1..-1]}"
		" #{faa} 7th (#{inv}nd Inv) || #{four} Min 7th (#{inv}nd Inv) || #{four_seventh} "
	end

	def show_me_harmonized_chords_of(key)

		ret = {}
		piano = PianoChords.new()
		piano_chords = piano.get_sofas_and_invertions(key)

		# Doo
		# 6 chord (2nd Iversion)
		# 1 Chord (1st Invertion)
		doo_options = [
			form_body(piano_chords, 6, 2, "La"),
			form_body(piano_chords, 1, 1, "Do"),
			# seventh(1, piano_chords, piano, "Do")
		]
		ret[1] = form_option(doo_options, "Do")


		# Ree
		# 2 Chord (1st Inversion)
		# 2 Chord 7th ( 1st Inversion )
		ree_options = [
			form_body(piano_chords, 2, 1, "Re"),
			form_body(piano_chords, 5, 1, "So"),
			form_body(piano_chords, 7, 2, "Ti")
		]
		ret[2] = form_option(ree_options, "Re")


		# Mi
		# 1 Chord ( 2nd inversion)
		# 1 Chord 7th ( 2nd Iversion )
		mii_options = [
			form_body(piano_chords, 1, 2, "Do"),
			seventh(1, piano_chords, piano, "Do") + "|| So Tor Do Mi || 5 b7 1 3"
		]
		ret[3] = form_option(mii_options, "Mi")

		# Fa
		# 2 Chord ( 2nd Inversion )
		# 2 Chord 7th ( 2nd Inversion )
		faa_options = [
			form_body(piano_chords, 2, 2, "Re"),
			seventh_minor(2, piano_chords, piano, "Re", 2) + "|| La Do Re Fa || 6 1 2 4"
		]
		ret[4] = form_option(faa_options, "Fa")

		# So
		# 3 Diminished
		# b7 Diminished 7th ( root Inversions )
		three 	= piano_chords[3]["chord_name"].split(" ")[0]
		seven  	= piano_chords[7]["chord_name"].split(" ")[0]
		five 	= piano_chords[5]["chord_name"].split(" ")[0]
		three_diminished = piano.diminished_chord_names_and_details(three)[0]
		three_diminished = " Mi Dim (root inv) || #{three} Dim (root inv) || " + three_diminished + " || " + " Mi So Tor || 3 5 b7"
		flat_seven_diminished_seventh = piano.diminished_chord_names_and_details(flat_key(seven))[0] + " " + five
		flat_seven_diminished_seventh = " Tor Dim 7th (root inv) || #{flat_key(seven)} Dim 7th (root inv) || " + flat_seven_diminished_seventh + " || " + " Tor Di Mi So || b7 b2 3 5"
		soo_options = [flat_seven_diminished_seventh, three_diminished]
		ret[5]  = form_option(soo_options, "So")

		# La
		# 4 Chord ( 2nd Inversion )
		# 4 Chord 7th ( 2nd Inversion  )
		four_seventh = seventh(4, piano_chords, piano, "Fa")
		laa_options = [
			form_body(piano_chords, 4, 2, "Fa"),
			four_seventh + " || Do Mor Fa La || 1 b3 4 6"
		]
		ret[6] = form_option(laa_options, "La")

		# Ti
		# 5 Chord ( 2nd Inversion )
		# 5 Chord 7th ( 2nd Inversion )
		laa_options = [
			form_body(piano_chords, 5, 2, "So"),
			seventh(5, piano_chords, piano, "So") + "|| Re Do So Ti || 2 1 5 7"
		]
		ret[7] = form_option(laa_options, "Ti")


		ret
	end
end

class Pattern

	def show_me_chords_for_pattern_in_key(pattern, key)
		pattern = pattern.split(" ")
		array = [ "", "Do" , "Re", "Mi", "Fa", "So", "La", "Ti", "Do" ]
		harm = Harmonization.new()
		harm = harm.show_me_harmonized_chords_of(key)
		ev = {}
		pattern.each do |each|
			position = array.index(each.capitalize)
			find = harm.find_all { |k,v| k == position }[0]
			ev["#{each}"] = find[1]
		end
		ev
	end

	def get_pattern_for_all_keys(pattern)
		keys_array  = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "G#", "A", "Bb", "B"]
		fin = {}

		keys_array.each do |each|
			#puts "#{each} :"#
			ans = show_me_chords_for_pattern_in_key(pattern, each)
			former = ""
			pattern.split(" ").each do |sofa|
				degree = ans[sofa]["degree"]
				options1 = ans[sofa]["options"][0]
				options2 = ans[sofa]["options"][1]
				if degree == "Mi(H)"
				 form = "#{degree}:#{options2}"
				else
					form = "#{degree}:#{options1}"
				end
				former += form + " === "
				 #puts form#
			end
			fin["#{each}"] = former
		end
		fin
	end
end
