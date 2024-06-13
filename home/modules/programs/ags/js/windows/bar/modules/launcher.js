import { Widget, Utils } from "../../../imports.js";
import { getLauncherIcon } from "../../../utils/launcher.js";
const { Button, Label } = Widget;

export const LauncherIcon = () =>
  Button({
    vexpand: true,
    className: "launcherIcon",
    cursor: "pointer",
    child: Label({ label: "", justification: "center" }),
    onClicked: () => {
      Utils.execAsync(["swaync-client", "-t"])
        .then((out) => print(out))
        .catch((e) => print(e));
    },
  });
