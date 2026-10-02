"""Generate the sampling lecture's signal-chain diagram (conda environment: quarto)."""
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch
import numpy as np

ANALOG, DIGITAL, INK = "#087E8B", "#5552AA", "#25364A"
fig, ax = plt.subplots(figsize=(12, 4.8))
fig.patch.set_facecolor("white")
ax.set(xlim=(0, 12), ylim=(0, 4.8))
ax.axis("off")


def box(x, y, title, subtitle, color, fill):
    ax.add_patch(FancyBboxPatch((x, y), 2.35, 1.0,
                 boxstyle="round,pad=0.025,rounding_size=0.12",
                 linewidth=1.5, edgecolor=color, facecolor=fill))
    ax.text(x + 1.175, y + .65, title, ha="center", va="center",
            fontsize=13, weight="bold", color=INK)
    ax.text(x + 1.175, y + .28, subtitle, ha="center", va="center",
            fontsize=10, color=color)


def arrow(start, end, color=ANALOG):
    ax.add_patch(FancyArrowPatch(start, end, arrowstyle="-|>",
                 mutation_scale=16, linewidth=1.8, color=color))


ax.text(.25, 4.5, "ANALOG INPUT", fontsize=11, weight="bold", color=ANALOG)
ax.text(11.75, 4.5, "DIGITAL DOMAIN", ha="right", fontsize=11,
        weight="bold", color=DIGITAL)
xs = [.25, 3.3, 6.35, 9.4]
box(xs[0], 2.95, "Phenomenon / sensor", "Physical quantity → voltage", ANALOG, "#EDF8F8")
box(xs[1], 2.95, "Anti-alias filter", "Limit signal bandwidth", ANALOG, "#EDF8F8")
box(xs[2], 2.95, "ADC", "Analog → digital", DIGITAL, "#F2F1FA")
box(xs[3], 2.95, "Digital processing", "Computation / storage", DIGITAL, "#F2F1FA")
for i in range(3):
    arrow((xs[i] + 2.39, 3.45), (xs[i+1] - .07, 3.45),
          DIGITAL if i == 2 else ANALOG)

# The return row continues right to left, without repeating converters.
arrow((10.575, 2.91), (10.575, 1.85), DIGITAL)
ax.text(11.0, 2.38, "Digital\nsamples", color=DIGITAL, fontsize=10, va="center")
box(xs[3], .8, "DAC", "Digital → analog", DIGITAL, "#F2F1FA")
box(xs[2], .8, "Reconstruction filter", "Smooth the DAC signal", ANALOG, "#EDF8F8")
box(xs[1], .8, "Output", "Continuous-time signal", ANALOG, "#EDF8F8")
arrow((xs[3] - .07, 1.3), (xs[2] + 2.39, 1.3))
arrow((xs[2] - .07, 1.3), (xs[1] + 2.39, 1.3))
arrow((xs[1] - .07, 1.3), (2.65, 1.3))
t = np.linspace(0, 1, 160)
ax.plot(.45 + 1.95*t, 1.3 + .28*np.sin(4*np.pi*t), color=ANALOG, lw=2.2)
ax.text(1.425, .8, "Reconstructed waveform", ha="center", fontsize=10, color=ANALOG)
ax.text(.25, .22, "ANALOG OUTPUT", fontsize=11, weight="bold", color=ANALOG)

fig.subplots_adjust(left=0, right=1, bottom=0, top=1)
fig.savefig(Path(__file__).with_suffix(".png"), dpi=240, facecolor="white")
plt.close(fig)
