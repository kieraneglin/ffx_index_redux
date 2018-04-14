import Vue from 'vue'
import App from '../views/App.vue'

import router from '../router/main'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('app-mount'))
  const app = new Vue({
    el,
    router,
    render: h => h(App)
  })

  console.log(app)
})
