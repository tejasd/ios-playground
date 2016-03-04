// scrollViewWithDatePicker.js
// Tejas' iOS Playground
// Created on 03/04/2016

'use strict';

import React, {
  ScrollView,
  Animated,
  DatePickerIOS,
  Text,
  StyleSheet
} from 'react-native';

let scrollViewWithDatePicker = React.createClass({
  render: function() {
    return (
      <ScrollView
        style={styles.container}
        contentContainerStyle={styles.contentContainerStyles}>
        <Text style={styles.text}>Can you see this?</Text>
      </ScrollView>
    );
  }
});

let styles = StyleSheet.create({
  container: {
    flex: 1,
    borderColor: 'blue',
    borderWidth: 1
  },
  contentContainerStyles: {
    alignItems: 'center',
    justifyContent: 'center'
  },
  text: {
    fontSize: 15
  }
});

module.exports = scrollViewWithDatePicker;
