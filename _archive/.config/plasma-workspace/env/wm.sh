# Disable KWin and use i3gaps as WM
export KDEWM=/usr/bin/i3

# Compositor (Animations, Shadows, Transparency)
compton -cCFb --backend glx --vsync opengl
