#### How to use EasyEffects for microphone improvement
 - __Launch EasyEffects__

- From:
    - App launcher → EasyEffects
    - or terminal:

```easyeffects```

- The app has two tabs at the top:
    - Output (headphones/speakers)
    - Input (microphone)
- Click Input (this is where mic processing happens) - you should see a meter moving when you talk

#### Select your microphone
- Top‑right device dropdown:
    - Choose your actual mic  
    - Not “Monitor”, not virtual devices
    - Actual, physical mic device

- You should see:
    - Live input meter moving when you speak

- If you don’t:
    - Check KDE → Audio → Input Device
    - Confirm PipeWire is active

#### Gain staging
   - Speak normally
   - Set input gain so peaks hit:
      - -12 dB to -6 dB

Avoid:
- red clipping
- constantly hitting 0 dB

#### Input gain vs compressor gain separation

- Do not use compressor makeup gain to fix a quiet microphone — set input gain first.
- This prevents:
    - noise amplification
    - compressor pumping
    - inconsistent voice levels

#### Enable effects (order matters)
- EasyEffects works as a chain — effects are processed top to bottom.

- Click “Add Effect” and enable these:

- Recommended order for voice:
    1. High‑Pass Filter
    2. Noise Reduction
    3. Expander (reduces background noise when you are not speaking)
    4. Compressor
    5. Limiter
    6. (Optional) Equalizer

- You can toggle effects on/off individually.

#### Starter mic preset (gaming / Discord / streaming)
- This is a safe, clean baseline that works for most mics.

#### High‑Pass Filter (removes rumble)

- Cutoff: 80–100 Hz
- Slope: Default

**Removes desk noise, mic stand vibration, breath thumps**

#### Noise Reduction
- Use RNNoise if available:
    - Threshold: Default
    - Strength: Start low

- __Removes background noise (fans, hum, room tone)__
- __Too strong = robotic voice__

#### Compressor (the biggest quality boost)
- Suggested starting values:

    - Ratio: 3:1
    - Threshold: ‑18 dB
    - Attack: 10 ms
    - Release: 100 ms
    - Makeup gain: Enable

- __Makes your voice consistent and “radio‑like”__
- __If voice sounds unnatural, reduce Noise Reduction or Compressor before adding EQ.__

#### Limiter (prevents clipping)

- Ceiling: ‑1 dB
- Lookahead: Enabled

__Prevents digital clipping or app noise spikes__

#### Optional: Equalizer (clarity)
Only if you want extra polish:

- Slight boost around 2–4 kHz
- Slight cut < 150 Hz

Keep EQ subtle.

#### Using it with Discord (important)
Discord sometimes:

- Applies its own noise suppression
- Fights your processing

__Recommended Discord settings:__

- Input device: Your real mic
- Disable:
    - Noise suppression
    - Echo cancellation
    - Automatic gain control
    - Use a standard microphone (not “automatic” tuning profiles) if available

__Let EasyEffects handle all processing.__

#### Saving & auto‑starting
- Save your preset

- Top‑right → Presets → Save
- Give it a name like:

```Mic – Gaming Clean```

#### Auto‑start EasyEffects

- In KDE:
    - System Settings → Autostart
    - Add EasyEffects
- Use systemctl if available on your system -
        -  systemctl --user list-unit-files | grep easyeffects - checks if service is available
        -  systemctl --user enable easyeffects - enable service
        -  systemctl --user status easyeffects - checks status of service

__Effects apply automatically on login.__
