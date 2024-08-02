{...}: {
  boot = {
    loader = {
      systemd.boot = true;
      efi.canTouchEfiVariables = true;
    };
    # Avoid touchpad click to tap (clickpad) bug. For more detail see:
    # https://wiki.archlinux.org/title/Touchpad_Synaptics#Touchpad_does_not_work_after_resuming_from_hibernate/suspend
    kernelParams = [ "psmouse.synaptics_intertouch=0" ];
  };
}
