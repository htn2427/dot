// https://gist.github.com/fdeblic/54750b0d54208b0cc9290c85e10b36e6

(video, objectType) => {
  // Forbidden keyword in the video title
  var forbidden_keybords = [
    "cs2",
    "bomman",
    "faceit",
    "counter-strike",
    "counter strike",
    "cs",
    "csgo",
    "hoag",
    "mixi gaming",
    "mixi",
    "donk",
    "esport",
    "pubg",
    "lmht",
    "Liên Minh Huyền Thoại",
    "League of Legends",
    "lck",
    "VALORANT",
  ];

  // Trusted channel names or ID
  var trusted_channels = [];

  // Blacklisted channel names or ID
  var blacklist_channels = [];

  // Setup for regex checking
  forbidden_keybords = forbidden_keybords.join("|").toLowerCase();
  trusted_channels = "^(" + trusted_channels.join("|") + ")$";
  blacklist_channels = "^(" + blacklist_channels.join("|") + ")$";

  // Trusted channel => whitelist
  if (
    (video.channelId && video.channelId.match(trusted_channels)) ||
    (video.channelName && video.channelName.match(trusted_channels))
  ) {
    return false;
  }

  // Blacklisted channel => block
  if (
    (video.channelId && video.channelId.match(blacklist_channels)) ||
    (video.channelName && video.channelName.match(blacklist_channels))
  ) {
    return true;
  }

  // Blacklisted keybord => block
  if (video.title && video.title.toLowerCase().match(forbidden_keybords)) {
    return true;
  }

  // Blacklisted keybord channel => block
  if (
    (video.channelId && video.channelId.toLowerCase().match(forbidden_keybords)) ||
    (video.channelName && video.channelName.toLowerCase().match(forbidden_keybords))
  ) {
    return true;
  }

  // Default behaviour => do not block
  return false;
};
