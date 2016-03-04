/**
 * Sample React Native App
 * https://github.com/facebook/react-native
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

class SimpleScreen extends Component {
  render() {
    return (
      <View style={styles.container}>
        <TouchableHighlight
          onPress={this._onPress.bind(this)}>
          <View>
            <Text style={styles.goBackText}>Go Back</Text>
          </View>
        </TouchableHighlight>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
      </View>
    );
  }
  _onPress() {
    DismissViewControllerManager.goBack();
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  goBackText: {
    fontSize: 20
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  }
});

module.exports = SimpleScreen;
