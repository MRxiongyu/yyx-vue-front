<template>
  <div>
    <ul>
      <li v-for="user in users" :key="user.id">
        {{user.name}}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'App',
  data() {
    return {
      users: []
    }
  },
  async mounted() {
    const {data} = await axios.get('http://localhost:3000/users')
    this.users = data
  }
}
</script>

<style>
</style>
