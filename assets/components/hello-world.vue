<template>
  <div class='hello-world'>
    <h1>{{ message }}</h1>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: `Hello, world! ${Date.now()}`
    }
  }
}
</script>

<style scoped>
</style>
