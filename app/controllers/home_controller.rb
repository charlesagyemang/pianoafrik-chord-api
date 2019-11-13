class HomeController < ApplicationController
  def index
    key = params[:key]

    piano_chords = PianoChords.new()

    piano_chords = piano_chords.get_sofas_and_invertions(key)

    render json: {:message => piano_chords}, status: 200
  end

  def chords_and_sofas
    #code
    key = params[:key]

    piano_chords = PianoChords.new()

    piano_chords = piano_chords.get_sofas_and_invertions(key)

    render json: {:message => piano_chords}, status: 200
  end

  def harmonized_chords
    key = params[:key]

    piano_chords = Harmonization.new()

    piano_chords = piano_chords.show_me_harmonized_chords_of(key)

    render json: {:message => piano_chords}, status: 200
    #code
  end


  def patterns
    pattern = params[:pattern]

    piano_chords = Pattern.new()

    piano_chords = piano_chords.show_me_chords_for_pattern_in_key(pattern, params[:key])

    render json: {:message => piano_chords}, status: 200
    #code
  end

end
