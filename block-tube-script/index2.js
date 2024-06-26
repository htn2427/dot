(video, objectType) => {
  const currentUrl = window.location.href;

  // reset current video's score if present in localstorage (we have shown interest in the video by clicking on it)
  if (currentUrl.includes(video.videoId)) {
    if (localStorage.hasOwnProperty(video.videoId)) {
      localStorage[video.videoId] = 0;
    }
  }

  if (objectType !== "compactVideoRenderer") {
    return false; // must be in the recommended videos
  }
  if (localStorage.hasOwnProperty(video.videoId)) {
    const score = parseInt(localStorage[video.videoId]);

    // How many times you allow a video to be recommended (change this to whatever you prefer)
    if (score >= 5) {
      return true;
    } else {
      localStorage[video.videoId] = score + 1;
    }
  } else {
    localStorage[video.videoId] = 1; // create video
  }

  return false;
};
