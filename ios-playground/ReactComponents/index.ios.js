/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */
'use strict';
import React, {
  AppRegistry,
  Component,
  StyleSheet,
  Text,
  View,
  TouchableHighlight,
  NativeModules
} from 'react-native';

let DismissViewControllerManager = NativeModules.DismissViewControllerManager;
let SimpleScreen = require('./src/simpleScreen');
let ScrollView = require('./src/scrollViewWithDatePicker');

const ComponentDictionary = {
  'SimpleScreen': SimpleScreen,
  'scrollViewWithDatePicker': ScrollView
}

class SimpleApp extends Component {
  render() {
    let Component = ComponentDictionary[this.props.initialScreen];
    return (
      <Component props={{...this.props}}/>
    );
  }
}

AppRegistry.registerComponent('SimpleApp', () => SimpleApp);
