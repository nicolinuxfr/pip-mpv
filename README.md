# Picture in Picture avec mpv sur Mac

Si vous n'utilisez pas macOS Sierra ou Safari, ce script ouvre une vidéo depuis YouTube et les autres dans mpv. Pour fonctionner correctement, vous devez activer le script depuis la page de lecture d'un site de streaming ouverte dans le navigateur de votre choix. 

Le script ouvre une fenêtre de mpv en bas à gauche, avec une vidéo réduite de moitié. La fenêtre reste toujours au-dessus des autres : modifiez la [ligne 43](https://github.com/nicolinuxfr/pip-mpv/blob/master/PiP.applescript#L43) si vous préférez un comportement différent.


### Sites pris en charge : 

- YouTube
- Vimeo
- Dailymotion
- Twitch
- Autres : les liens vers flux de streaming (m3u8) ou des vidéos seront aussi pris en charge

**Note** : voici la [liste de tous les sites](http://rg3.github.io/youtube-dl/supportedsites.html) pris en charge par mpv. Modifiez la [ligne 38](https://github.com/nicolinuxfr/pip-mpv/blob/master/PiP.applescript#L38) pour adapter le script en fonction de vos besoins.

## Prérequis

Installez mpv avant toute chose en passant par [Homebrew](http://brew.sh). 

Le script utilise l'URL fournie par le navigateur et en dernier recours, le contenu du presse-papier. Il fonctionne avec Safari, Chrome et Firefox. 
