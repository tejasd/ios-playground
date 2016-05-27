// scrollViewWithDatePicker.js
// Tejas' iOS Playground
// Created on 03/04/2016

'use strict';

import React, {
  Animated,
  DatePickerIOS,
  Text,
  StyleSheet,
  TouchableHighlight,
  View
} from 'react-native';

let DatePickerCell = React.createClass({
  getInitialState: function() {
    return ({
      showDatePicker: false,
      date: this.props.date ? this.props.date : new Date()
    });
  },
  render: function() {
    return (
      <View>
        <TouchableHighlight
          onPress={() => {this.setState({showDatePicker: !this.state.showDatePicker})}}>
          <View style={styles.cellContainer}>
            <Text style={styles.asOfText}>As of</Text>
            <Text style={styles.dateText}>{this.state.date.toISOString().slice(0,10)}</Text>
          </View>
        </TouchableHighlight>
        {this._renderDatePicker()}
      </View>
    );
  },
  _renderDatePicker: function() {
    if (this.state.showDatePicker) {
      return (<DatePickerIOS
                date={this.state.date}
                onDateChange={(newDate) => {
                  this.setState({
                    date: newDate
                  });

                }}
                mode={'date'}/>
            );
    } else {
      return null;
    }
  }
});

let styles = StyleSheet.create({
  cellContainer: {
    flex: 1,
    flexDirection: 'row',
    height: 44,
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'aliceblue',
  },
  asOfText: {
    paddingLeft: 10,
    justifyContent: 'flex-start'
  },
  dateText: {
    paddingRight: 10
  }
});

module.exports = DatePickerCell;
