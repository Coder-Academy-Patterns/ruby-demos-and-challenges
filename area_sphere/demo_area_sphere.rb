# Got pi from Google
pi = 3.14159265359

puts 'Enter diameter:'
# Get string from the user
input = gets
# Convert to float
diameter = input.to_f

# Perform multiplication with two floats
circumference = pi * diameter

# Area formula: A = pi * r * r
radius = diameter / 2.0
area = pi * radius * radius

# Calculate volume
volume = (4.0 / 3.0) * pi * radius ** 3.0

# Output/display to the user
print 'Circumference: '
# Display with 3 decimal places
puts circumference.round(3)

# Output area
print 'Area: '
puts area.round(3)

# Output volume
print 'Volume: '
puts volume.round(3)