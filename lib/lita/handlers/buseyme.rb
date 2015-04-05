module Lita
  module Handlers
    class Buseyme < Handler
      IMAGES = [
        "http://images.starpulse.com/pictures/2011/09/06/previews/Gary%20Busey-20110906-15.jpg",
        "http://cdn.cnwimg.com/wp-content/uploads/2010/11/gary-busey-210x300.jpg",
        "http://www.thrashingzombies.com/wp-content/uploads/2011/06/3779262793_f3d19d5b9f_o.jpg",
        "http://www.blogcdn.com/www.switched.com/media/2007/04/busey_two.jpg",
        "http://realitytvsting.com/wp-content/uploads/2013/04/Gary+Busey+zc8fT8iuM0Hm.jpg",
        "http://www.thedailyrash.com/wp-content/uploads/2010/06/gary_busey_roast.jpg",
        "http://whatculture.com/wp-content/uploads/2008/11/gary_busey2.jpg",
        "http://abcnews.go.com/images/Business/gty_gary_busey_dm_120208_wblog.jpg",
        "http://www.swallowdaily.com/wp-content/uploads/2013/03/GaryBusey.jpg",
        "http://www.starpulse.com/news/media/Gary-Busey-022310.jpg"
      ]

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
        response.reply "#{QUOTES.sample} #{IMAGES.sample}"
      end
    end

    Lita.register_handler(Buseyme)
  end
end
