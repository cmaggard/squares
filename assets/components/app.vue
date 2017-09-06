<template>
  <v-app toolbar footer light>
    <v-navigation-drawer></v-navigation-drawer>
    <v-toolbar class="deep-purple darken-2" dark>
      <v-toolbar-side-icon />
      <v-toolbar-title>
        Squares
      </v-toolbar-title>
    </v-toolbar>
    <main>
      <v-container fluid>
        <router-view></router-view>
      </v-container>
    </main>
    <v-footer></v-footer>
  </v-app>
</template>

<script>
  export default {
    data () {
      return {
        message: "Hello world!"
      }
    }
  }
</script>

<style scoped>
</style>
