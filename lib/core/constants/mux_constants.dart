
mixin MuxConstant{
  // API for sending videos
String muxBaseUrl = 'https://api.mux.com';

// API server running on localhost
String muxServerUrl = 'http://localhost:3000';

// API for generating thumbnails of a video
String muxImageBaseUrl = 'https://image.mux.com';

// API for streaming a video
String muxStreamBaseUrl = 'https://stream.mux.com';

// Received video file format
String videoExtension = 'm3u8';

// Thumbnail file type and size
String imageTypeSize = 'thumbnail.jpg?time=5&width=200';

// Content Type used in API calls
String contentType = 'application/json';

// Test video url provided by MUX
String demoVideoUrl = 'https://storage.googleapis.com/muxdemofiles/mux-video-intro.mp4';

String  playbackId = "bE5Gh01GgnM6S2FkJXj01s411p013hgL301obb72RGAxax8";

}