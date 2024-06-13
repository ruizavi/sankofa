import { App } from "./js/imports.js";
const css = App.configDir + "/style.css";

// Windows
import { Bar } from "./js/windows/bar/index.js";
import { Popups } from "./js/windows/popups/index.js";

App.connect("config-parsed", () => print("config parsed"));

// Main config
export default {
  style: css,
  closeWindowDelay: {
    launcher: 300,
    music: 300,
  },
};

/**
 * @param {any[]} windows
 */
function addWindows(windows) {
  windows.forEach((win) => App.addWindow(win));
}

addWindows([Bar(), Popups()]);
