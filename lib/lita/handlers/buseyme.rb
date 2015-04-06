module Lita
  module Handlers
    class Buseyme < Handler
      QUOTES = [
        "My dark side, my shadow, my lower companion is now in the back room blowing up balloons for kids' parties.",
        "You know what 'FAILING' stands for? It stands for 'Finding An Important Lesson, Inviting Needed Growth.'",
        "Nothing changes like changes, because nothing changes but the changes.",
        "It's a very strange silence that I'm living in right now. It's a silence that has a lot of activity and noise in it from a zone that I don't live in on this earth.",
        "If you take shortcuts, you get cut short.",
        "Imagine the peace symbol. The peace symbol has three pieces in it. One piece is emotion, that's your body. Another piece has spirit in it, that's your fuel. Another piece has intellect in it and that's your steering wheel. You can never overdo the fuel that goes into the body, which is the emotions and the steering wheel to drive it.",
        "I'll tell you this: You have to remember to chase and catch your dreams, because if you don't, your imagination will live in empty spaces, and that's nowhere land.",
        "It's good for everyone to understand that they are to love their enemies, simply because your enemies show you things about yourself you need to change. So in actuality enemies are friends in reverse.",
        "Winners do what losers don't want to do.",
        "I don't know where I come from but I'm here now so deal with it.",
        "Fear is the dark room where the Devil develops his negatives.",
        "Your imagination is the hood ornament on your car of creativity."
      ]

      route(/^busey me/i, :busey, command: true, help: {
        "busey me" => "Display a motivational busey"
      })

      def busey(response)
        response.reply "#{QUOTES.sample} https://s3.amazonaws.com/hofftest/busey#{rand(1..12)}.jpg"
      end
    end

    Lita.register_handler(Buseyme)
  end
end
