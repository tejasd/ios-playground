import React, {
  Component,
  Animated
} from 'react-native';

let Playground = React.createClass({
  getInitialState: function() {
    return {
      bounceValue: new Animated.Value(1.5),
    };
  },

  render: function() {
    return (
      <Animated.Image
        source={{uri: 'http://i.imgur.com/XMKOH81.jpg'}}
        style={{
          flex: 1,
          transaform: [
            {scale: this.state.bounceValue}
          ]
        }}
      />
    );
  },
  componentDidMount: function() {
    // this.setState({
    //   bounceValue: this.state.bounceValue.setValue(1.5)
    // })
    Animated.spring(
      this.state.bounceValue,
      {
        toValue: 0.8,
        friction: 1
      }
    ).start();
  }
});

module.exports = Playground;
