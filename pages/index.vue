<template>
  <div id="app">
    <h1 class="title">
      アプリ名
    </h1>
    <input v-model="newItem" type="text">
    <form @submit.prevent>
      <button @click="addItem">
        add
      </button>
    </form>
    <li v-for="todo in todos" :key="todo.item">
      {{ todo.item }}
    </li>
  </div>
</template>

<script>
export default {
  data () {
    return {
      newItem: '',
      todos: []
    }
  },
  methods: {
    addItem () {
      const todo = {
        item: this.newItem
      }
      this.todos.push(todo)
    }
  }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
