<!DOCTYPE html>
<html lang="en-us">
  <head>
  <script id='LeChuckAPIjs' src="https://ssl.minijuegosgratis.com/lechuck/js/latest.js"></script>

    <script type='text/javascript'>
      lechuck = new LeChuckAPI({});
      function miniplaySend2API(stat,value) {
        console.log("miniplaySend2API called. Waiting for a response");
        lechuck.stat.put(function(response){
           console.log(response);
        }, stat,value);
      }
    </script>  
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title> Parkour | BEST Parkour Game</title>
    <meta name="description" content="Parkour.lol is a web-based sandbox parkour that is suitable for low-end devices and players that want to play and chill. Play the game for completely free without downloading anything at all, play multiplayer parkour games with many players across many platforms around the globe. Become the 1st at speedrunning the whole map. Enjoy!">
    <meta name="keywords" content="parkour.lol, LOL, lol, IO, io, Games, Ferge, free, shooter, multiplayer, friends, weapons, coins, ferge, parkour, lizak, lee, zak, lee zak">
    <meta name="author" content="Lee Zak">
    <link rel="shortcut icon" href="TemplateData/favicon.ico">
    <link rel="stylesheet" href="TemplateData/style.css">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Heebo:wght@200;500&display=swap');
      @import url('https://fonts.googleapis.com/css2?family=Heebo:wght@200;500&family=MuseoModerno:wght@600&display=swap');
    </style>
    <!-- ZONETAG - PLACE INTO HEAD SECTION OR RUN CODE AT STARTUP -->
    <script>
      window.aiptag = window.aiptag || {cmd: []};
      aiptag.cmd.player = aiptag.cmd.player || [];
      //CMP tool settings
      aiptag.cmp = {
        show: true,
        position: "centered",  //centered, bottom
        button: true,
        buttonText: "Privacy settings",
        buttonPosition: "bottom-left" //bottom-left, bottom-right, top-left, top-right
      }
    
      aiptag.cmd.player.push(function() {
        aiptag.adplayer = new aipPlayer({
          AD_WIDTH: 960,
          AD_HEIGHT: 540,
          AD_DISPLAY: 'fullscreen', //default, fullscreen, center, fill
          TRUSTED: true,
          LOADING_TEXT: 'loading advertisement',
          PREROLL_ELEM: function(){return document.getElementById('preroll')},
          AIP_COMPLETE: function (state)  {
            /*******************
             ***** WARNING *****
             *******************
             Please do not remove the PREROLL_ELEM
             from the page, it will be hidden automaticly.
            */
          unityInstance.SendMessage('Connecter', 'JavascriptOnInterstitialFinish');
            
            console.log("Preroll Ad Completed: " + state);
          }
        });
    
          });
    
        function show_preroll() {
        //check if the adslib is loaded correctly or blocked by adblockers etc.
        if (typeof aiptag.adplayer !== 'undefined') {
          aiptag.cmd.player.push(function() { aiptag.adplayer.startPreRoll(); });
        } else {
          //Adlib didnt load this could be due to an adblocker, timeout etc.
          //Please add your script here that starts the content, this usually is the same script as added in AIP_COMPLETE.
          console.log("Ad Could not be loaded, load your content here");
          unityInstance.SendMessage('Connecter', 'JavascriptOnInterstitialFinish');


        }
      }
        </script>
      <script async src="//api.adinplay.com/libs/aiptag/pub/BLS/parkour.lol/tag.min.js"></script>
  </head>
  <body class="dark">
    <div id="preroll"></div>
    <script type="module">
      // Import the functions you need from the SDKs you need
      import { initializeApp } from "https://www.gstatic.com/firebasejs/9.8.3/firebase-app.js";
      import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.8.3/firebase-analytics.js";
      // TODO: Add SDKs for Firebase products that you want to use
      // https://firebase.google.com/docs/web/setup#available-libraries
    
      // Your web app's Firebase configuration
      // For Firebase JS SDK v7.20.0 and later, measurementId is optional
      const firebaseConfig = {
        apiKey: "AIzaSyAdBkUMchGfvaYRkjiUP3uN2g1IFCdBXUA",
        authDomain: "parkourlol.firebaseapp.com",
        databaseURL: "https://parkourlol-default-rtdb.firebaseio.com",
        projectId: "parkourlol",
        storageBucket: "parkourlol.appspot.com",
        messagingSenderId: "51919427127",
        appId: "1:51919427127:web:8d0fdc0cd05e4e242611b2",
        measurementId: "G-7GK7C0Y840"
      };
    
      // Initialize Firebase
      const app = initializeApp(firebaseConfig);
      const analytics = getAnalytics(app);
    </script>
    
    <!-- SPECIAL 160x600 Placement Tag -->
    <script async src="https://ssl.cdne.cpmstar.com/cached/js/lib.js"></script>
    <div id="160x600" class="div-86613" style="position: absolute; top: 36%; width:160px; height:600px; display: none;"></div>
    <script>
    (function(w,pid){
    var y = "cpmstarx", els = w.document.getElementsByClassName("div-"+pid), pindex = els.length-1, el = els[pindex];
    w[y]=w[y]||{};(w[y].libcmd=w[y].libcmd||[]).push({kind:'asynctagfetch',el:el,pid:pid,pindex:pindex});
    })(window,86613);
    </script>
    <script>
      //display the interstitial after a event
      function showInterstitial () {
        show_preroll();
      }
      function showBanners() {
        /*var x = document.getElementsByClassName("adBanners");
        var i;
        for (i = 0; i < x.length; i++) {
            x[i].style.display = 'block';
        }*/
      }
      function hideBanners() {
        /*var x = document.getElementsByClassName("adBanners");
        var i;
        for (i = 0; i < x.length; i++) {
            x[i].style.display = 'none';
        }*/
      }
      function show160x600() {
        /*var x = document.getElementById("160x600");
        x.style.display = 'block';*/
      }
      function hide160x600() {
        /*var x = document.getElementById("160x600");
        x.style.display = 'none';*/         
      }
      function onWindowResize() {
        /*var w = window.innerWidth / 1920.0; // the default tested resolution width
        var h = window.innerHeight / 960.0; // the default tested resolution height
        var newScale = (w + h) / 2.0; //avarage calculation
        var leftPX = (-(300.0 / 2.0) * (1.0 - newScale)) + (newScale * 10.0);
        var leftSpecialPX = (-(160.0 / 2.0) * (1.0 - newScale)) + (newScale * 10.0);
        var topAD = document.getElementById("topAd");
        var bottomAd = document.getElementById("bottomAd");
        var SpecialAd = document.getElementById("160x600");
        topAD.style.left = leftPX + "px";
        bottomAd.style.left = leftPX + "px";
        SpecialAd.style.left = leftSpecialPX + "px";
        topAD.style.transform = "scale("+newScale+")";
        bottomAd.style.transform = "scale("+newScale+")";
        SpecialAd.style.transform = "scale("+newScale+")";*/
      };
      window.onresize = onWindowResize;
      window.onload = onWindowResize;
    </script>
    <div id="unity-container" class="unity-desktop">
      <canvas id="unity-canvas"></canvas>
    </div>
    <div id="loading-cover" style="display:none;">
      <div id="unity-loading-bar">
        <div id="unity-logo">
          <img src="logo.png">
          <br>
          <p id="loading-txt" style="text-align: center; font-family: 'MuseoModerno', cursive;color: white;font-size: 50px;margin-top: 0px;margin-bottom: 0px;" >Loading...</p>
        </div>
        <div id="unity-progress-bar-empty" style="display: none;">
          <div id="unity-progress-bar-full"></div>
        </div>
        <div class="spinner"></div>
      </div>
    </div>
    <script>
      const buildUrl = "Build";
      const loaderUrl = buildUrl + "/ParkourWebGL.loader.js";
      const config = {
        dataUrl: buildUrl + "/ParkourWebGL.data.gz",
        frameworkUrl: buildUrl + "/ParkourWebGL.framework.js.gz",
        codeUrl: buildUrl + "/ParkourWebGL.wasm.gz",
        streamingAssetsUrl: "StreamingAssets",
        companyName: "ZakStudios",
        productName: "Parkour",
        productVersion: "0.1",
      };

      const container = document.querySelector("#unity-container");
      const canvas = document.querySelector("#unity-canvas");
      const loadingCover = document.querySelector("#loading-cover");
      const progressBarEmpty = document.querySelector("#unity-progress-bar-empty");
      const progressBarFull = document.querySelector("#unity-progress-bar-full");
      const spinner = document.querySelector('.spinner');
      if (/iPhone|iPad|iPod|Android/i.test(navigator.userAgent)) {
        container.className = "unity-mobile";
        config.devicePixelRatio = 1;
      }
      loadingCover.style.display = "";
      const script2 = document.createElement("script");
      script2.src = loaderUrl;
      script2.onload = () => {
        createUnityInstance(canvas, config, (progress) => {
          spinner.style.display = "none";
          progressBarEmpty.style.display = "";
          progressBarFull.style.width = `${100 * progress}%`;
        }).then((unityInstance) => {
          window.unityInstance = unityInstance;
          loadingCover.style.display = "none";
        }).catch((message) => {
          alert(message);
        });
      };
      document.body.appendChild(script2);
    </script>
  </body>
  <script>
    function LockCursor(){
      canvas.requestPointerLock = canvas.requestPointerLock || canvas.mozRequestPointerLock;
      canvas.requestPointerLock();
    }
    function ReloadGame(){
      //auto-hide banners at start of load
      hideBanners();
      window.location.reload();
    }
    function toggleFullscreen(){
      if (document.fullscreenElement === null){
        openFullscreen();
        return;
      }
      exitFullscreen();
    }
    function openFullscreen() {
      document.documentElement.requestFullscreen();
    }
    function exitFullscreen() {
      document.exitFullscreen();

    }
    document.addEventListener('pointerlockchange', lockChangeAlert, false);
    document.addEventListener('mozpointerlockchange', lockChangeAlert, false);
      function lockChangeAlert() {
      if(document.pointerLockElement === canvas || document.mozPointerLockElement === canvas)
      {

      }else
      {
        unityInstance.SendMessage('Connecter', 'OnEscape');
      }
    }
    window.addEventListener('load', (event) => {
        onWindowResize();
    });
	</script>
</html>
