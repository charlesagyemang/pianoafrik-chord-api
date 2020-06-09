class HomeController < ApplicationController

  def index
    key = get_key()

    if key.class == NilClass

       render json: {:error => "Bad Request"}, status: 400

    else

      piano_chords = PianoChords.new()

      piano_chords = piano_chords.get_sofas_and_invertions(key)

      render json: {:message => piano_chords}, status: 200
    end



  end

  def chords_and_sofas
    #code
    key = get_key()

    piano_chords = PianoChords.new()

    piano_chords = piano_chords.get_sofas_and_invertions(key)

    render json: {:message => piano_chords}, status: 200
  end

  def harmonized_chords
    key = get_key()

    render json: { message: Harmonization.new().show_me_harmonized_chords_of(key),
                   chords_and_sofas: PianoChords.new().get_sofas_and_invertions(key),
                   sofas: PianoChords.new().get_sofas_of_key(key)
                 }, status: 200
    #code
  end


  def patterns
    pattern = params[:pattern]

    piano_chords = Pattern.new()

    piano_chords = piano_chords.show_me_chords_for_pattern_in_key(pattern, params[:key])

    render json: {:message => piano_chords}, status: 200
    #code
  end

  def test

    key = get_key()

    render json: {:message => key}
    #code
  end

  def ping
    #code
    render json: {:message => "Welcome"}
  end



  private
    def get_key
      key = params[:key]
      key = key.split("")[0] + "#" if key.length > 1 && key.split("")[1].downcase != "b"
      key
      #code
    end

end
