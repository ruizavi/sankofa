import { Widget, Battery } from "../../../imports.js";
import {
    getBatteryPercentage,
} from "../../../utils/battery.js";
const { Button, Box, Label, Revealer, CircularProgress } = Widget;
const battery = await Service.import("battery")

const BatStatus = () =>
    Revealer({
        transition: "slide_down",
        transition_duration: 200,
        child: Label().bind("label", Battery, "percent", getBatteryPercentage),
    });

const value = battery.bind("percent").as(p => p > 0 ? p / 100 : 0)

export const BatteryWidget = () =>
    Button({
        className: "batteryButton",
        onPrimaryClick: (self) => {
            self.child.children[1].revealChild =
                !self.child.children[1].revealChild;
        },
        child: Box({
            className: "battery",
            vertical: true,
            children: [
                CircularProgress({
                    className: "batteryProgress",
                    rounded: true,
                    inverted: false,
                    value,
          setup: (self) => 
            self
            .hook(battery, w => {
              w.toggleClassName("batteryProgress-charging", battery.charging || battery.charged); 
              w.toggleClassName("batteryProgress-low", battery.percent < 25)})
                }),
                BatStatus()
            ]

        }),
    });
