<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld v-bind:msg="msg"/>
  </div>
</template>

<script>
function getRuntimeConfig() {
    return JSON.parse(
      document.getElementById('js-bundle-runtime-config').innerHTML
    );
}

const msg = `food is: ${getRuntimeConfig().FOOD}` 

import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'app',
  components: {
    HelloWorld
  },
  data: () => ({ msg })
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
