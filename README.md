# Border-Animation
Animated Card View with Rotating Gradient

This SwiftUI component features a rotating animation within a layered design.

Outer Shape (Rounded Rectangle):
A large RoundedRectangle with smooth continuous corners (100 radius) serves as the background. It is sized at 200x200 and filled with black. Additionally, a shadow effect is applied to give depth.

Inner Shape (Rotating Rectangle):
Another RoundedRectangle with smaller corner radius (20) rotates over the outer rectangle. The shape has a gradient background, transitioning vertically from transparent blue to solid blue, creating a subtle glowing effect. This rectangle rotates continuously.

Masking Effect:
The rotating rectangle is masked by a stroked circular outline, making it appear as though it’s rotating within the circular bounds of the outer rectangle.

Text Overlay:
The word "CARD" is displayed at the center of the design, styled in bold and large white text.

Animation:
The inner shape rotates infinitely using a linear animation, giving the entire component a dynamic, interactive look.
