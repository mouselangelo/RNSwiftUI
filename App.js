/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  requireNativeComponent
} from 'react-native';

const CounterView = requireNativeComponent("CounterView")

export default class App extends Component {
  state = {
    count: 1
  }

  increment = () => {
    this.setState({
      count: this.state.count + 1
    });
  }

  render() {
    return (
      <View style={styles.container}>
        <TouchableOpacity style={[styles.wrapper, styles.border]}
          onPress={this.increment}>
          <Text style={styles.button}>{this.state.count}</Text>
        </TouchableOpacity>
        <CounterView style={styles.wrapper}
          count={3}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'stretch',
  },
  wrapper: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  border: {
    borderColor: "#eee",
    borderBottomWidth: 1
  },
  button: {
    fontSize: 60,
    color: "deepskyblue"
  }
});