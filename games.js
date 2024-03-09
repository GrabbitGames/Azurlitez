setTimeout(function() {
    document.getElementById('loader').classList.add('hide');
    document.body.style.overflow = 'auto';
    setTimeout(function() {
        document.getElementById('loader').style.display = 'none';
    }, 100);
}, 1000);

fetch('games.json').then(response => response.json()).then(games => {
    games.forEach(game => {
        document.getElementById('games').innerHTML += `<div class="item" style="background: url('${game[2]}') 0% 0% / cover;" onclick="play('${game[3]}')"></div>`;
    });
});

function play(path) {
    var url = window.location.origin + path;
    var newWindow = window.open("about:blank", "_blank");
    if (newWindow != null) {
      var newContent = document.createElement("iframe");
      newContent.src = url;
      newContent.style.width = "100vw";
      newContent.style.height = "100vh";
      newContent.style.border = "none";
      newContent.style.position = "absolute";
      newContent.style.top = "0";
      newContent.style.left = "0";
      newWindow.document.body.appendChild(newContent);
    }
  }  
