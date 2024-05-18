import { Widget } from "../../imports.js";

// Widgets
import { BrightnessPopup } from "./brightnessPopup.js";
import { VolumePopup } from "./volumePopup.js";

export const Popups = () =>
    Widget.Window({
        name: "popups",
        className: "popups",
        anchor: ["bottom"],
        layer: "overlay",
        margins: [0, 12, 64, 0],
        child: Widget.Box({
            vertical: true,
            children: [BrightnessPopup(), VolumePopup()],
        }),
    });
