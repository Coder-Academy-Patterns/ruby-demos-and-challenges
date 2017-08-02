## Temperature: Celsius to Fahrenheit

### Skills

- User input: `gets`
- Number conversion: `.to_f`
- Methods: `def`
- String interpolation: `"text #{ ruby expression }"`
- Diplaying to user: `puts`
- Using gems: `terminal-table`

### Demo

1. Gets user input
2. Converts to number
3. Uses method that does Celsius to Fahrenheit formula
4. Displays both temperature values

### Challenges

#### 1

From **demo_temperature_message.rb**, add the following:

1. Get temperature from user
2. Color text as follows:
    > 30, .red
    > 20, .yellow
    > 10, .cyan
    .blue
3. Convert temperature to Fahrenheit


#### 2

Ask the user for the days in a week from Monday to Sunday and the temperature that day in Celsius. Using the [**terminal-table**](https://github.com/tj/terminal-table) gem, display the temperatures for the week in both Celsius and Fahrenheit.

Next, add coloring:
- 30 or above: colour red
- Below 30: colour yellow
- Below 20: colour cyan
- Below 10: colour blue
