; Please keep in mind, this is a highly condensed version of my own personal code, you will likely have to make some adjustements based on your own printer's settings, your printing preferences, etc.

; Start Gcode
G92 E0 ; Reset Extruder
G28 ; Home all axes
M190 S65 ; Heat bed back up to temp (change 65 to your bed temp)
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; this is to draw starting line and get filament flowing - use a skirt/brim if you would prefer no starting line
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish


; End Gcode
M190 R30
G0 X117 Y210 F3000 ; Edit this command based on your print
G0 X117 Y210 Z50 F3000 ; Edit this command based on your print
G0 X117 Y210 Z0.3 F3000 ; Edit this command based on your print
G0 X117 Y0 Z0.3 F3000 ; Edit this command based on your print
G0 X117 Y210 Z0.3 F3000 ; Edit this command based on your print
G0 X117 Y0 Z0.3 F3000 ; Edit this command based on your print
; G90 ;Absolute positionning ; Un-comment these out on the final copy-paste set of Gcode

G1 X0 Y{machine_depth} ;Present print
; M106 S0 ;Turn-off fan ; Un-comment these out on the final copy-paste set of Gcode
; M104 S0 ;Turn-off hotend ; Un-comment these out on the final copy-paste set of Gcode
; M140 S0 ;Turn-off bed ; Un-comment these out on the final copy-paste set of Gcode

; M84 X Y E ;Disable all steppers but Z ; Un-comment these out on the final copy-paste set of Gcode
