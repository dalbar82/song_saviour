import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = [ "play", "pause", "video", "container" ]

  connect() {
    console.log("hello from StimulusJS");
    console.log("video", this.videoTarget);
    console.log("play", this.playTarget);
    console.log("pause", this.pauseTarget);
    this.pauseTarget.style.display = "none"
  }

  play() {
    console.log('PLay');
    this.videoTarget.play();
    this.containerTarget.classList.add('playing')
    this.playTarget.style.display = "none";
    this.pauseTarget.style.display = "";
  }

  pause() {
    console.log('Pause');
    this.videoTarget.pause();
    this.containerTarget.classList.add('paused')
    this.pauseTarget.style.display = "none"
    this.playTarget.style.display = "";
  }
}
