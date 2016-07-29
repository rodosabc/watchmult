video = document.getElementById "video"
href = $('[plaing=true]').next().attr('href')
video.addEventListener "ended", () => location = href
      # var href = $('[plaing=true]').next().attr('href');
